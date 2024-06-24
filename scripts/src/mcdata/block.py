import bisect
import requests


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
    response = requests.get(BLOCKS_URL.format(mc_version))
    response.raise_for_status()
    blocks = response.json()

    response = requests.get(ITEMS_URL.format(mc_version))
    response.raise_for_status()
    items = [item if item.startswith("minecraft:") else f"minecraft:{item}" for item in response.json()]

    ret = []
    groups = [{}]
    for block, data in blocks.items():
        states = {}
        for name, options in data[0].items():
            idx = options.index(data[1][name])
            states[name] = options[idx:] + options[:idx]

        if states not in groups:
            groups.append(states)

        block = block if block.startswith("minecraft:") else f"minecraft:{block}"

        bisect.insort(ret, {
            "group": groups.index(states),
            "type": block,
            "item": BLOCK_TO_ITEM.get(block, block if block in items else None),
            "_": [{
                "n": name,
                "o": [{
                    "i": option_idx,
                    "v": value,
                    "s": {state_idx: f"{name}={value},"},
                    "p": {name: value},
                } for option_idx, value in enumerate(options)],
            } for state_idx, (name, options) in enumerate(states.items())]
        }, key=lambda x: x["group"])

    return ret

