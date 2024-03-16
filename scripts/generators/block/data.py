import requests

ITEMS = {
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

class DataProvider:
    blocks = []
    groups = [{}]

    def __init__(self, mc_version):
        response = requests.get(f"https://raw.githubusercontent.com/Ersatz77/mcdata/{mc_version}/processed/reports/blocks/simplified/data.min.json")

        for index, (block, block_data) in enumerate(response.json().items()):
            states = {}
            for name, options in block_data["properties"].items():
                while options[0] != block_data["default"][name]:
                    options.append(options.pop(0))
                states[name] = options

            if states not in self.groups:
                self.groups.append(states)

            self.blocks.append({"id": index + 1, "group": self.groups.index(states), "type": block})
