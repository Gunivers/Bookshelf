import requests
import sys
import os

from . import consumers

def run(mc_version, world_path):

    blocks = []
    groups = [{"default":{},"properties":{}}]
    response = requests.get(f"https://raw.githubusercontent.com/Ersatz77/mcdata/{mc_version}/processed/reports/blocks/simplified/data.json")

    for index, (type, states) in enumerate(response.json().items()):
        if states in groups:
            group = groups.index(states)
        else:
            groups.append(states)
            group = len(groups) - 1

        blocks.append({ "id": index + 1, "group": group, "type": type })

    module_path = os.path.join(world_path, "datapacks/Bookshelf/data/bs.block/")

    consumers.gen_tags_files(blocks, module_path)
    consumers.gen_types_file(blocks, module_path)
    consumers.gen_states_file(groups, module_path)
    consumers.gen_registry_files(groups, module_path)


if __name__ == "__main__":
    try:
        run(sys.argv[1], sys.argv[2])
    except IndexError:
        raise IndexError("Usage: python block.py <minecraft_version> <world_path>")
