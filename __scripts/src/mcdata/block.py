from collections import Counter, defaultdict
from itertools import permutations
import bisect
import requests
import json


BLOCKS_URL = "https://raw.githubusercontent.com/misode/mcmeta/{}-summary/blocks/data.min.json"
ITEMS_URL = "https://raw.githubusercontent.com/misode/mcmeta/{}-registries/item/data.min.json"

BLOCK_TO_ITEM = {
    "minecraft:wall_torch": "minecraft:torch",
    "minecraft:soul_wall_torch": "minecraft:soul_torch",
    "minecraft:redstone_wall_torch": "minecraft:redstone_torch",
    "minecraft:oak_wall_sign": "minecraft:oak_sign",
    "minecraft:spruce_wall_sign": "minecraft:spruce_sign",
    "minecraft:birch_wall_sign": "minecraft:birch_sign",
    "minecraft:jungle_wall_sign": "minecraft:jungle_sign",
    "minecraft:acacia_wall_sign": "minecraft:acacia_sign",
    "minecraft:cherry_wall_sign": "minecraft:cherry_sign",
    "minecraft:dark_oak_wall_sign": "minecraft:dark_oak_sign",
    "minecraft:mangrove_wall_sign": "minecraft:mangrove_sign",
    "minecraft:bamboo_wall_sign": "minecraft:bamboo_sign",
    "minecraft:crimson_wall_sign": "minecraft:crimson_sign",
    "minecraft:warped_wall_sign": "minecraft:warped_sign",
    "minecraft:oak_wall_hanging_sign": "minecraft:oak_hanging_sign",
    "minecraft:spruce_wall_hanging_sign": "minecraft:spruce_hanging_sign",
    "minecraft:birch_wall_hanging_sign": "minecraft:birch_hanging_sign",
    "minecraft:jungle_wall_hanging_sign": "minecraft:jungle_hanging_sign",
    "minecraft:acacia_wall_hanging_sign": "minecraft:acacia_hanging_sign",
    "minecraft:cherry_wall_hanging_sign": "minecraft:cherry_hanging_sign",
    "minecraft:dark_oak_wall_hanging_sign": "minecraft:dark_oak_hanging_sign",
    "minecraft:mangrove_wall_hanging_sign": "minecraft:mangrove_hanging_sign",
    "minecraft:bamboo_wall_hanging_sign": "minecraft:bamboo_hanging_sign",
    "minecraft:crimson_wall_hanging_sign": "minecraft:crimson_hanging_sign",
    "minecraft:warped_wall_hanging_sign": "minecraft:warped_hanging_sign",
    "minecraft:tube_coral_wall_fan": "minecraft:tube_coral_fan",
    "minecraft:brain_coral_wall_fan": "minecraft:brain_coral_fan",
    "minecraft:bubble_coral_wall_fan": "minecraft:bubble_coral_fan",
    "minecraft:fire_coral_wall_fan": "minecraft:fire_coral_fan",
    "minecraft:horn_coral_wall_fan": "minecraft:horn_coral_fan",
    "minecraft:dead_tube_coral_wall_fan": "minecraft:dead_tube_coral_fan",
    "minecraft:dead_brain_coral_wall_fan": "minecraft:dead_brain_coral_fan",
    "minecraft:dead_bubble_coral_wall_fan": "minecraft:dead_bubble_coral_fan",
    "minecraft:dead_fire_coral_wall_fan": "minecraft:dead_fire_coral_fan",
    "minecraft:dead_horn_coral_wall_fan": "minecraft:dead_horn_coral_fan",
    "minecraft:white_wall_banner": "minecraft:white_banner",
    "minecraft:orange_wall_banner": "minecraft:orange_banner",
    "minecraft:magenta_wall_banner": "minecraft:magenta_banner",
    "minecraft:light_blue_wall_banner": "minecraft:light_blue_banner",
    "minecraft:yellow_wall_banner": "minecraft:yellow_banner",
    "minecraft:lime_wall_banner": "minecraft:lime_banner",
    "minecraft:pink_wall_banner": "minecraft:pink_banner",
    "minecraft:gray_wall_banner": "minecraft:gray_banner",
    "minecraft:light_gray_wall_banner": "minecraft:light_gray_banner",
    "minecraft:cyan_wall_banner": "minecraft:cyan_banner",
    "minecraft:purple_wall_banner": "minecraft:purple_banner",
    "minecraft:blue_wall_banner": "minecraft:blue_banner",
    "minecraft:brown_wall_banner": "minecraft:brown_banner",
    "minecraft:green_wall_banner": "minecraft:green_banner",
    "minecraft:red_wall_banner": "minecraft:red_banner",
    "minecraft:black_wall_banner": "minecraft:black_banner",
    "minecraft:player_wall_head": "minecraft:player_head",
    "minecraft:zombie_wall_head": "minecraft:zombie_head",
    "minecraft:creeper_wall_head": "minecraft:creeper_head",
    "minecraft:dragon_wall_head": "minecraft:dragon_head",
    "minecraft:piglin_wall_head": "minecraft:piglin_head",
    "minecraft:skeleton_wall_skull": "minecraft:skeleton_skull",
    "minecraft:wither_skeleton_wall_skull": "minecraft:wither_skeleton_skull",
    "minecraft:redstone_wire": "minecraft:redstone",
    "minecraft:tripwire": "minecraft:string",
    "minecraft:water": "minecraft:water_bucket",
    "minecraft:lava": "minecraft:lava_bucket",
    "minecraft:powder_snow": "minecraft:powder_snow_bucket",
    "minecraft:big_dripleaf_stem": "minecraft:big_dripleaf",
    "minecraft:wheat": "minecraft:wheat_seeds",
    "minecraft:cocoa": "minecraft:cocoa_beans",
    "minecraft:melon_stem": "minecraft:pumpkin_seeds",
    "minecraft:pumpkin_stem": "minecraft:pumpkin_seeds",
    "minecraft:attached_melon_stem": "minecraft:melon_seeds",
    "minecraft:attached_pumpkin_stem": "minecraft:melon_seeds",
    "minecraft:water_cauldron": "minecraft:cauldron",
    "minecraft:lava_cauldron": "minecraft:cauldron",
    "minecraft:powder_snow_cauldron": "minecraft:cauldron",
    "minecraft:carrots": "minecraft:carrot",
    "minecraft:potatoes": "minecraft:potato",
    "minecraft:torchflower_crop": "minecraft:torchflower_seeds",
    "minecraft:pitcher_crop": "minecraft:pitcher_pod",
    "minecraft:beetroots": "minecraft:beetroot_seeds",
    "minecraft:sweet_berry_bush": "minecraft:sweet_berries",
    "minecraft:cave_vines": "minecraft:glow_berries",
    "minecraft:cave_vines_plant": "minecraft:glow_berries",
}


def get_blocks(mc_version: str) -> list[dict]:
    """
    Fetches blocks data for the given version of minecraft.
    """
    requests.packages.urllib3.util.connection.HAS_IPV6 = False
    response = requests.get(BLOCKS_URL.format(mc_version))
    response.raise_for_status()
    blocks = response.json()

    response = requests.get(ITEMS_URL.format(mc_version))
    response.raise_for_status()
    items = [item if item.startswith("minecraft:") else f"minecraft:{item}" for item in response.json()]

    groups = [{}]
    formatted_blocks = []

    for block, data in blocks.items():
        props = {}
        for name, options in data[0].items():
            idx = options.index(data[1][name])
            props[name] = options[idx:] + options[:idx]

        if props not in groups:
            groups.append(props)

        bisect.insort(formatted_blocks, {
            "type": (block := block if block.startswith("minecraft:") else f"minecraft:{block}"),
            "item": BLOCK_TO_ITEM.get(block, block if block in items else None),
            "group": groups.index(props),
        }, key=lambda x: x["group"])

    formatted_groups = format_groups(groups, find_best_permutations(groups))
    return [{**block, "states": formatted_groups[block["group"]] } for block in formatted_blocks]


def format_groups(groups, best_permutations):
    next_id = 1
    sequences = {}
    formatted_groups = []

    for group, perm in zip(groups, best_permutations):
        ref = None
        sequence = ()
        formatted_group = []

        for state in perm:
            sequence += (state,)
            if sequence not in sequences:
                sequences[sequence] = next_id
                next_id += 1

            formatted_group.append({
                "id": sequences[sequence],
                "idx": len(sequence) - 1,
                "ref": ref,
                "name": state[0],
                "options": group[state[0]],
            })
            ref = sequences[sequence]
        formatted_groups.append(formatted_group)

    return formatted_groups


def find_best_permutations(groups: list[dict]):
    counter = Counter()
    hashable_groups = []
    for group in groups:
        states = [(name, tuple(sorted(options))) for name, options in group.items()]
        counter.update(states)
        hashable_groups.append(states)

    all_permutations = []
    for states in hashable_groups:
        shared_states = []
        unique_states = []
        for state in states:
            if counter[state] > 1:
                shared_states.append(state)
            else:
                unique_states.append(state)
        all_permutations.append([list(perm) + unique_states for perm in permutations(shared_states)])

    best_permutations = []
    while all_permutations:
        best_score = -1
        best_permutation = None
        group_permutations = all_permutations.pop(0)

        for perm in group_permutations:
            score = sum(count_common_prefix(perm, best_perm) for best_perm in best_permutations)
            for other_group_permutations in all_permutations:
                score += max(count_common_prefix(perm, other_perm) for other_perm in other_group_permutations)

            if score > best_score:
                best_score = score
                best_permutation = perm

        best_permutations.append(best_permutation)

    return best_permutations


def count_common_prefix(a: list, b: list):
    i = 0
    while i < len(a) and i < len(b) and a[i] == b[i]:
        i += 1
    return i


SOUNDS_URL = "https://raw.githubusercontent.com/Gunivers/Bookshelf-McData/{}/blocks/sounds.min.json"


def get_sounds(mc_version: str) -> list[dict]:
    """
    Fetches block sounds data for the given version of minecraft.
    """
    requests.packages.urllib3.util.connection.HAS_IPV6 = False
    response = requests.get(SOUNDS_URL.format(mc_version))
    response.raise_for_status()
    return response.json()
