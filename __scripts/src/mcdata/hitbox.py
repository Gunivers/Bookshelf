from collections import defaultdict
import json
import requests


SHAPES_URL = "https://raw.githubusercontent.com/Gunivers/Bookshelf-McData/{}/blocks/shapes.min.json"


def get_shapes(mc_version: str) -> list[dict]:
    """
    Fetches block shapes data for the given version of minecraft.
    """
    requests.packages.urllib3.util.connection.HAS_IPV6 = False
    response = requests.get(SHAPES_URL.format(mc_version))
    response.raise_for_status()
    shapes = response.json()

    group = defaultdict(list)
    for block, entries in shapes.items():
        if all(item["shape"] in ([[0.0,0.0,0.0,1.0,1.0,1.0]], []) for item in entries):
            continue

        for prop in list(entries[0]["properties"].keys()):
            values = {entry["properties"][prop] for entry in entries}
            shapes = {value: [entry["shape"] for entry in entries if entry["properties"][prop] == value] for value in values}

            first_shape = next(iter(shapes.values()))
            if all(shape == first_shape for shape in shapes.values()):
                entries = [entry for entry in entries if entry["properties"][prop] == next(iter(values))]
                for entry in entries:
                    entry["properties"].pop(prop)

        group[json.dumps([{
            "has_offset": entry["has_offset"],
            "properties": entry["properties"],
            "shape": [[value * 16 for value in shape] for shape in entry["shape"]]
        } for entry in entries])].append(block)

    i = 0
    return [{
        "group": (i := i + 1) if len(json.loads(shapes)) > 1 else 0,
        "blocks": blocks,
        "shapes": json.loads(shapes)
    } for shapes, blocks in group.items()]
