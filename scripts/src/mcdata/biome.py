
import requests


BIOMES_URL = "https://raw.githubusercontent.com/misode/mcmeta/{}-summary/data/worldgen/biome/data.min.json"


def get_biomes(mc_version: str) -> list[dict]:
    """
    Fetches biomes data for the given version of minecraft.
    """
    requests.packages.urllib3.util.connection.HAS_IPV6 = False
    response = requests.get(BIOMES_URL.format(mc_version))
    response.raise_for_status()
    biomes = response.json()

    return [{
        "type": biome if biome.startswith("minecraft:") else f"minecraft:{biome}",
        "temperature": float(data["temperature"]),
        "has_precipitation": bool(data["has_precipitation"]),
    } for biome, data in biomes.items()]
