import requests
import tempfile
import subprocess
import shutil
import os
import sys
import re


def run(mc_version, world_path):
    setup_env(mc_version)
    run_test_server(world_path)


def setup_env(mc_version):
    os.environ['FABRIC_SERVER'] = "https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.15.7/1.0.0/server/jar"
    os.environ['FABRIC_API'] = "https://cdn.modrinth.com/data/P7dR8mSH/versions/9p2sguD7/fabric-api-0.96.4%2B1.20.4.jar"
    os.environ['PACKTEST'] = "https://cdn.modrinth.com/data/XsKUhp45/versions/18smpIeE/packtest-1.6-mc1.20.4.jar"


def run_test_server(world_path):
    datapacks = os.path.join(os.path.abspath(world_path), "datapacks")

    with tempfile.TemporaryDirectory() as tempdir:
        current_dir = os.getcwd()
        os.chdir(tempdir)
        os.mkdir("mods")

        print("📥 Downloading assets")
        open("server.jar", "wb").write(requests.get(os.environ['FABRIC_SERVER']).content)
        open("mods/fabric-api.jar", "wb").write(requests.get(os.environ['FABRIC_API']).content)
        open("mods/packtest.jar", "wb").write(requests.get(os.environ['PACKTEST']).content)
        print("✅ Done!")

        print("📁 Preparing datapacks")
        shutil.copytree(datapacks, "world/datapacks")
        print("✅ Done!")

        print("🧪 Running test server")

        process = subprocess.Popen(
            "java -Xmx2G -Dpacktest.auto -Dpacktest.auto.annotations -jar server.jar nogui",
            stdout=subprocess.PIPE,
            universal_newlines=True,
            shell=True,
        )

        for log in iter(process.stdout.readline, ""):
            match = re.search(r"::error title=(.*?)::(.*)", log)
            if match:
                title, description = match.groups()
                print(f"\033[1m\033[91m❌ {title}\033[0m: {description}")

        code = process.wait()

        print(f"💥 {code} required tests failed :(" if code > 0 else "✅ Done!")
        os.chdir(current_dir)


if __name__ == "__main__":
    if len(sys.argv) == 2:
        setup_env(sys.argv[1])
    elif len(sys.argv) == 3:
        run(sys.argv[1], sys.argv[2])
    else:
        raise IndexError("Usage: python packtest.py <minecraft_version> [<world_path>]")
