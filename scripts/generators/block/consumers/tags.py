import math
import os


def gen_tags_files(blocks, module_path):

    print("⚙️ Generating block tags")

    types = ['"' + block['type'] + '"' for block in blocks if block['group'] > 0]
    with open(os.path.join(module_path, "tags/blocks/has_state.json"), "w") as file:
        file.write(r"""{"values":[%types%]}""".replace("%types%", ",".join(types)))

    for i in range(math.floor(math.log2(len(blocks))) + 1):
        types = ['"' + block['type'] + '"' for block in blocks if (block['id'] >> i) & 1]
        with open(os.path.join(module_path, f"tags/blocks/type/group_{2**i}.json"), "w") as file:
            file.write(r"""{"values":[%types%]}""".replace("%types%", ",".join(types)))

    print("✅ Done!")
