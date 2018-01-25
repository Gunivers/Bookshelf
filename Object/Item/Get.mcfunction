# NAME: Item To ID
# PATH: Gunivers-Lib: Object/Item/Get

# AUTHOR: Luludatra

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# Gunivers-Lib:Utils/Import/Temporary (Import file)

# INPUT:

# OUTPUT:
# - Tmp1   <- Item ID
# - Tmp2   <- Item Damage

# CODE:

scoreboard objectives add Tmp1 dummy
scoreboard objectives add Tmp2 dummy

# Damage

scoreboard players set @s Tmp2 0 {Item:{Damage:0s}}
scoreboard players set @s Tmp2 1 {Item:{Damage:1s}}
scoreboard players set @s Tmp2 2 {Item:{Damage:2s}}
scoreboard players set @s Tmp2 3 {Item:{Damage:3s}}
scoreboard players set @s Tmp2 4 {Item:{Damage:4s}}
scoreboard players set @s Tmp2 5 {Item:{Damage:5s}}
scoreboard players set @s Tmp2 6 {Item:{Damage:6s}}
scoreboard players set @s Tmp2 7 {Item:{Damage:7s}}
scoreboard players set @s Tmp2 8 {Item:{Damage:8s}}
scoreboard players set @s Tmp2 9 {Item:{Damage:9s}}
scoreboard players set @s Tmp2 10 {Item:{Damage:10s}}
scoreboard players set @s Tmp2 11 {Item:{Damage:11s}}
scoreboard players set @s Tmp2 12 {Item:{Damage:12s}}
scoreboard players set @s Tmp2 13 {Item:{Damage:13s}}
scoreboard players set @s Tmp2 14 {Item:{Damage:14s}}
scoreboard players set @s Tmp2 15 {Item:{Damage:15s}}

# 0 - air
scoreboard players set @s Tmp1 0 {Item:{id:"minecraft:air"}}
# 1 - stone
scoreboard players set @s Tmp1 1 {Item:{id:"minecraft:stone"}}
# 2 - grass
scoreboard players set @s Tmp1 2 {Item:{id:"minecraft:grass"}}
# 3 - dirt
scoreboard players set @s Tmp1 3 {Item:{id:"minecraft:dirt"}}
# 4 - cobblestone
scoreboard players set @s Tmp1 4 {Item:{id:"minecraft:cobblestone"}}
# 5 - planks
scoreboard players set @s Tmp1 5 {Item:{id:"minecraft:planks"}}
# 6 - sapling
scoreboard players set @s Tmp1 6 {Item:{id:"minecraft:sapling"}}
# 7 - bedrock
scoreboard players set @s Tmp1 7 {Item:{id:"minecraft:bedrock"}}
# 8 - flowing_water
scoreboard players set @s Tmp1 8 {Item:{id:"minecraft:flowing_water"}}
# 9 - water
scoreboard players set @s Tmp1 9 {Item:{id:"minecraft:water"}}
# 10 - flowing_lava
scoreboard players set @s Tmp1 10 {Item:{id:"minecraft:flowing_lava"}}
# 11 - lava
scoreboard players set @s Tmp1 11 {Item:{id:"minecraft:lava"}}
# 12 - sand
scoreboard players set @s Tmp1 12 {Item:{id:"minecraft:sand"}}
# 13 - gravel
scoreboard players set @s Tmp1 13 {Item:{id:"minecraft:gravel"}}
# 14 - gold_ore
scoreboard players set @s Tmp1 14 {Item:{id:"minecraft:gold_ore"}}
# 15 - iron_ore
scoreboard players set @s Tmp1 15 {Item:{id:"minecraft:iron_ore"}}
# 16 - coal_ore
scoreboard players set @s Tmp1 16 {Item:{id:"minecraft:coal_ore"}}
# 17 - log
scoreboard players set @s Tmp1 17 {Item:{id:"minecraft:log"}}
# 18 - leaves
scoreboard players set @s Tmp1 18 {Item:{id:"minecraft:leaves"}}
# 19 - sponge
scoreboard players set @s Tmp1 19 {Item:{id:"minecraft:sponge"}}
# 20 - glass
scoreboard players set @s Tmp1 20 {Item:{id:"minecraft:glass"}}
# 21 - lapis_ore
scoreboard players set @s Tmp1 21 {Item:{id:"minecraft:lapis_ore"}}
# 22 - lapis_block
scoreboard players set @s Tmp1 22 {Item:{id:"minecraft:lapis_block"}}
# 23 - dispenser
scoreboard players set @s Tmp1 23 {Item:{id:"minecraft:dispenser"}}
# 24 - sandstone
scoreboard players set @s Tmp1 24 {Item:{id:"minecraft:sandstone"}}
# 25 - noteblock
scoreboard players set @s Tmp1 25 {Item:{id:"minecraft:noteblock"}}
# 26 - bed
scoreboard players set @s Tmp1 26 {Item:{id:"minecraft:bed"}}
# 27 - golden_rail
scoreboard players set @s Tmp1 27 {Item:{id:"minecraft:golden_rail"}}
# 28 - detector_rail
scoreboard players set @s Tmp1 28 {Item:{id:"minecraft:detector_rail"}}
# 29 - sticky_piston
scoreboard players set @s Tmp1 29 {Item:{id:"minecraft:sticky_piston"}}
# 30 - web
scoreboard players set @s Tmp1 30 {Item:{id:"minecraft:web"}}
# 31 - tallgrass
scoreboard players set @s Tmp1 31 {Item:{id:"minecraft:tallgrass"}}
# 32 - deadbush
scoreboard players set @s Tmp1 32 {Item:{id:"minecraft:deadbush"}}
# 33 - piston
scoreboard players set @s Tmp1 33 {Item:{id:"minecraft:piston"}}
# 34 - piston_head
scoreboard players set @s Tmp1 34 {Item:{id:"minecraft:piston_head"}}
# 35 - wool
scoreboard players set @s Tmp1 35 {Item:{id:"minecraft:wool"}}
# 36 - none
scoreboard players set @s Tmp1 36 {Item:{id:"minecraft:none"}}
# 37 - yellow_flower
scoreboard players set @s Tmp1 37 {Item:{id:"minecraft:yellow_flower"}}
# 38 - red_flower
scoreboard players set @s Tmp1 38 {Item:{id:"minecraft:red_flower"}}
# 39 - brown_mushroom
scoreboard players set @s Tmp1 39 {Item:{id:"minecraft:brown_mushroom"}}
# 40 - red_mushroom
scoreboard players set @s Tmp1 40 {Item:{id:"minecraft:red_mushroom"}}
# 41 - gold_block
scoreboard players set @s Tmp1 41 {Item:{id:"minecraft:gold_block"}}
# 42 - iron_block
scoreboard players set @s Tmp1 42 {Item:{id:"minecraft:iron_block"}}
# 43 - double_slab
scoreboard players set @s Tmp1 43 {Item:{id:"minecraft:double_slab"}}
# 44 - stone_slab
scoreboard players set @s Tmp1 44 {Item:{id:"minecraft:stone_slab"}}
# 45 - brick
scoreboard players set @s Tmp1 45 {Item:{id:"minecraft:brick"}}
# 46 - tnt
scoreboard players set @s Tmp1 46 {Item:{id:"minecraft:tnt"}}
# 47 - bookshelf
scoreboard players set @s Tmp1 47 {Item:{id:"minecraft:bookshelf"}}
# 48 - mossy_cobblestone
scoreboard players set @s Tmp1 48 {Item:{id:"minecraft:mossy_cobblestone"}}
# 49 - obsidian
scoreboard players set @s Tmp1 49 {Item:{id:"minecraft:obsidian"}}
# 50 - torch
scoreboard players set @s Tmp1 50 {Item:{id:"minecraft:torch"}}
# 51 - fire
scoreboard players set @s Tmp1 51 {Item:{id:"minecraft:fire"}}
# 52 - mob_spawner
scoreboard players set @s Tmp1 52 {Item:{id:"minecraft:mob_spawner"}}
# 53 - oak_stairs
scoreboard players set @s Tmp1 53 {Item:{id:"minecraft:oak_stairs"}}
# 54 - chest
scoreboard players set @s Tmp1 54 {Item:{id:"minecraft:chest"}}
# 55 - redstone_wire
scoreboard players set @s Tmp1 55 {Item:{id:"minecraft:redstone_wire"}}
# 56 - diamond_ore
scoreboard players set @s Tmp1 56 {Item:{id:"minecraft:diamond_ore"}}
# 57 - diamond_block
scoreboard players set @s Tmp1 57 {Item:{id:"minecraft:diamond_block"}}
# 58 - crafting_table
scoreboard players set @s Tmp1 58 {Item:{id:"minecraft:crafting_table"}}
# 59 - wheat
scoreboard players set @s Tmp1 59 {Item:{id:"minecraft:wheat"}}
# 60 - farmland
scoreboard players set @s Tmp1 60 {Item:{id:"minecraft:farmland"}}
# 61 - furnace
scoreboard players set @s Tmp1 61 {Item:{id:"minecraft:furnace"}}
# 62 - lit_furnace
scoreboard players set @s Tmp1 62 {Item:{id:"minecraft:lit_furnace"}}
# 63 - standing_sign
scoreboard players set @s Tmp1 63 {Item:{id:"minecraft:standing_sign"}}
# 64 - wooden_door
scoreboard players set @s Tmp1 64 {Item:{id:"minecraft:wooden_door"}}
# 65 - ladder
scoreboard players set @s Tmp1 65 {Item:{id:"minecraft:ladder"}}
# 66 - rail
scoreboard players set @s Tmp1 66 {Item:{id:"minecraft:rail"}}
# 67 - stone_stairs
scoreboard players set @s Tmp1 67 {Item:{id:"minecraft:stone_stairs"}}
# 68 - wall_sign
scoreboard players set @s Tmp1 68 {Item:{id:"minecraft:wall_sign"}}
# 69 - lever
scoreboard players set @s Tmp1 69 {Item:{id:"minecraft:lever"}}
# 70 - stone_pressure_plate
scoreboard players set @s Tmp1 70 {Item:{id:"minecraft:stone_pressure_plate"}}
# 71 - iron_door
scoreboard players set @s Tmp1 71 {Item:{id:"minecraft:iron_door"}}
# 72 - wooden_pressure_plate
scoreboard players set @s Tmp1 72 {Item:{id:"minecraft:wooden_pressure_plate"}}
# 73 - redstone_ore
scoreboard players set @s Tmp1 73 {Item:{id:"minecraft:redstone_ore"}}
# 74 - lit_redstone_ore
scoreboard players set @s Tmp1 74 {Item:{id:"minecraft:lit_redstone_ore"}}
# 75 - unlit_redstone_torch
scoreboard players set @s Tmp1 75 {Item:{id:"minecraft:unlit_redstone_torch"}}
# 76 - redstone_torch
scoreboard players set @s Tmp1 76 {Item:{id:"minecraft:redstone_torch"}}
# 77 - stone_button
scoreboard players set @s Tmp1 77 {Item:{id:"minecraft:stone_button"}}
# 78 - snow_layer
scoreboard players set @s Tmp1 78 {Item:{id:"minecraft:snow_layer"}}
# 79 - ice
scoreboard players set @s Tmp1 79 {Item:{id:"minecraft:ice"}}
# 80 - snow
scoreboard players set @s Tmp1 80 {Item:{id:"minecraft:snow"}}
# 81 - cactus
scoreboard players set @s Tmp1 81 {Item:{id:"minecraft:cactus"}}
# 82 - clay
scoreboard players set @s Tmp1 82 {Item:{id:"minecraft:clay"}}
# 83 - reeds
scoreboard players set @s Tmp1 83 {Item:{id:"minecraft:reeds"}}
# 84 - jukebox
scoreboard players set @s Tmp1 84 {Item:{id:"minecraft:jukebox"}}
# 85 - fence
scoreboard players set @s Tmp1 85 {Item:{id:"minecraft:fence"}}
# 86 - pumpkin
scoreboard players set @s Tmp1 86 {Item:{id:"minecraft:pumpkin"}}
# 87 - netherrack
scoreboard players set @s Tmp1 87 {Item:{id:"minecraft:netherrack"}}
# 88 - soul_sand
scoreboard players set @s Tmp1 88 {Item:{id:"minecraft:soul_sand"}}
# 89 - glowstone
scoreboard players set @s Tmp1 89 {Item:{id:"minecraft:glowstone"}}
# 90 - portal
scoreboard players set @s Tmp1 90 {Item:{id:"minecraft:portal"}}
# 91 - lit_pumpkin
scoreboard players set @s Tmp1 91 {Item:{id:"minecraft:lit_pumpkin"}}
# 92 - cake
scoreboard players set @s Tmp1 92 {Item:{id:"minecraft:cake"}}
# 93 - unpowered_repeater
scoreboard players set @s Tmp1 93 {Item:{id:"minecraft:unpowered_repeater"}}
# 94 - powered_repeater
scoreboard players set @s Tmp1 94 {Item:{id:"minecraft:powered_repeater"}}
# 95 - stained_glass
scoreboard players set @s Tmp1 95 {Item:{id:"minecraft:stained_glass"}}
# 96 - trapdoor
scoreboard players set @s Tmp1 96 {Item:{id:"minecraft:trapdoor"}}
# 97 - monster_egg
scoreboard players set @s Tmp1 97 {Item:{id:"minecraft:monster_egg"}}
# 98 - stonebrick
scoreboard players set @s Tmp1 98 {Item:{id:"minecraft:stonebrick"}}
# 99 - brown_mushroom_block
scoreboard players set @s Tmp1 99 {Item:{id:"minecraft:brown_mushroom_block"}}
# 100 - red_mushroom_block
scoreboard players set @s Tmp1 100 {Item:{id:"minecraft:red_mushroom_block"}}
# 101 - iron_bars
scoreboard players set @s Tmp1 101 {Item:{id:"minecraft:iron_bars"}}
# 102 - glass_pane
scoreboard players set @s Tmp1 102 {Item:{id:"minecraft:glass_pane"}}
# 103 - melon_block
scoreboard players set @s Tmp1 103 {Item:{id:"minecraft:melon_block"}}
# 104 - pumpkin_stem
scoreboard players set @s Tmp1 104 {Item:{id:"minecraft:pumpkin_stem"}}
# 105 - melon_stem
scoreboard players set @s Tmp1 105 {Item:{id:"minecraft:melon_stem"}}
# 106 - vine
scoreboard players set @s Tmp1 106 {Item:{id:"minecraft:vine"}}
# 107 - fence_gate
scoreboard players set @s Tmp1 107 {Item:{id:"minecraft:fence_gate"}}
# 108 - brick_stairs
scoreboard players set @s Tmp1 108 {Item:{id:"minecraft:brick_stairs"}}
# 109 - stone_brick_stairs
scoreboard players set @s Tmp1 109 {Item:{id:"minecraft:stone_brick_stairs"}}
# 110 - mycelium
scoreboard players set @s Tmp1 110 {Item:{id:"minecraft:mycelium"}}
# 111 - waterlily
scoreboard players set @s Tmp1 111 {Item:{id:"minecraft:waterlily"}}
# 112 - nether_brick
scoreboard players set @s Tmp1 112 {Item:{id:"minecraft:nether_brick"}}
# 113 - nether_brick_fence
scoreboard players set @s Tmp1 113 {Item:{id:"minecraft:nether_brick_fence"}}
# 114 - nether_brick_stairs
scoreboard players set @s Tmp1 114 {Item:{id:"minecraft:nether_brick_stairs"}}
# 115 - nether_wart
scoreboard players set @s Tmp1 115 {Item:{id:"minecraft:nether_wart"}}
# 116 - enchanting_table
scoreboard players set @s Tmp1 116 {Item:{id:"minecraft:enchanting_table"}}
# 117 - brewing_stand
scoreboard players set @s Tmp1 117 {Item:{id:"minecraft:brewing_stand"}}
# 118 - cauldron
scoreboard players set @s Tmp1 118 {Item:{id:"minecraft:cauldron"}}
# 119 - end_portal
scoreboard players set @s Tmp1 119 {Item:{id:"minecraft:end_portal"}}
# 120 - end_portal_frame
scoreboard players set @s Tmp1 120 {Item:{id:"minecraft:end_portal_frame"}}
# 121 - end_stone
scoreboard players set @s Tmp1 121 {Item:{id:"minecraft:end_stone"}}
# 122 - dragon_egg
scoreboard players set @s Tmp1 122 {Item:{id:"minecraft:dragon_egg"}}
# 123 - redstone_lamp
scoreboard players set @s Tmp1 123 {Item:{id:"minecraft:redstone_lamp"}}
# 124 - lit_redstone_lamp
scoreboard players set @s Tmp1 124 {Item:{id:"minecraft:lit_redstone_lamp"}}
# 125 - double_wooden_slab
scoreboard players set @s Tmp1 125 {Item:{id:"minecraft:double_wooden_slab"}}
# 126 - wooden_slab
scoreboard players set @s Tmp1 126 {Item:{id:"minecraft:wooden_slab"}}
# 127 - cocoa
scoreboard players set @s Tmp1 127 {Item:{id:"minecraft:cocoa"}}
# 128 - sandstone_stairs
scoreboard players set @s Tmp1 128 {Item:{id:"minecraft:sandstone_stairs"}}
# 129 - emerald_ore
scoreboard players set @s Tmp1 129 {Item:{id:"minecraft:emerald_ore"}}
# 130 - ender_chest
scoreboard players set @s Tmp1 130 {Item:{id:"minecraft:ender_chest"}}
# 131 - tripwire_hook
scoreboard players set @s Tmp1 131 {Item:{id:"minecraft:tripwire_hook"}}
# 132 - tripwire
scoreboard players set @s Tmp1 132 {Item:{id:"minecraft:tripwire"}}
# 133 - emerald_block
scoreboard players set @s Tmp1 133 {Item:{id:"minecraft:emerald_block"}}
# 134 - spruce_stairs
scoreboard players set @s Tmp1 134 {Item:{id:"minecraft:spruce_stairs"}}
# 135 - birch_stairs
scoreboard players set @s Tmp1 135 {Item:{id:"minecraft:birch_stairs"}}
# 136 - jungle_stairs
scoreboard players set @s Tmp1 136 {Item:{id:"minecraft:jungle_stairs"}}
# 137 - command_block
scoreboard players set @s Tmp1 137 {Item:{id:"minecraft:command_block"}}
# 138 - beacon
scoreboard players set @s Tmp1 138 {Item:{id:"minecraft:beacon"}}
# 139 - cobblestone_wall
scoreboard players set @s Tmp1 139 {Item:{id:"minecraft:cobblestone_wall"}}
# 140 - flower_pot
scoreboard players set @s Tmp1 140 {Item:{id:"minecraft:flower_pot"}}
# 141 - carrots
scoreboard players set @s Tmp1 141 {Item:{id:"minecraft:carrots"}}
# 142 - potatoes
scoreboard players set @s Tmp1 142 {Item:{id:"minecraft:potatoes"}}
# 143 - wooden_button
scoreboard players set @s Tmp1 143 {Item:{id:"minecraft:wooden_button"}}
# 144 - skull
scoreboard players set @s Tmp1 144 {Item:{id:"minecraft:skull"}}
# 145 - anvil
scoreboard players set @s Tmp1 145 {Item:{id:"minecraft:anvil"}}
# 146 - trapped_chest
scoreboard players set @s Tmp1 146 {Item:{id:"minecraft:trapped_chest"}}
# 147 - light_weighted_pressure_plate
scoreboard players set @s Tmp1 147 {Item:{id:"minecraft:light_weighted_pressure_plate"}}
# 148 - heavy_weighted_pressure_plate
scoreboard players set @s Tmp1 148 {Item:{id:"minecraft:heavy_weighted_pressure_plate"}}
# 149 - unpowered_comparator
scoreboard players set @s Tmp1 149 {Item:{id:"minecraft:unpowered_comparator"}}
# 150 - powered_comparator
scoreboard players set @s Tmp1 150 {Item:{id:"minecraft:powered_comparator"}}
# 151 - daylight_detector
scoreboard players set @s Tmp1 151 {Item:{id:"minecraft:daylight_detector"}}
# 152 - redstone_block
scoreboard players set @s Tmp1 152 {Item:{id:"minecraft:redstone_block"}}
# 153 - quartz_ore
scoreboard players set @s Tmp1 153 {Item:{id:"minecraft:quartz_ore"}}
# 154 - hopper
scoreboard players set @s Tmp1 154 {Item:{id:"minecraft:hopper"}}
# 155 - quartz_block
scoreboard players set @s Tmp1 155 {Item:{id:"minecraft:quartz_block"}}
# 156 - quartz_stairs
scoreboard players set @s Tmp1 156 {Item:{id:"minecraft:quartz_stairs"}}
# 157 - activator_rail
scoreboard players set @s Tmp1 157 {Item:{id:"minecraft:activator_rail"}}
# 158 - dropper
scoreboard players set @s Tmp1 158 {Item:{id:"minecraft:dropper"}}
# 159 - stained_hardened_clay
scoreboard players set @s Tmp1 159 {Item:{id:"minecraft:stained_hardened_clay"}}
# 160 - stained_glass_pane
scoreboard players set @s Tmp1 160 {Item:{id:"minecraft:stained_glass_pane"}}
# 161 - leaves2
scoreboard players set @s Tmp1 161 {Item:{id:"minecraft:leaves2"}}
# 162 - log2
scoreboard players set @s Tmp1 162 {Item:{id:"minecraft:log2"}}
# 163 - acacia_stairs
scoreboard players set @s Tmp1 163 {Item:{id:"minecraft:acacia_stairs"}}
# 164 - dark_oak_stairs
scoreboard players set @s Tmp1 164 {Item:{id:"minecraft:dark_oak_stairs"}}
# 165 - slime
scoreboard players set @s Tmp1 165 {Item:{id:"minecraft:slime"}}
# 166 - barrier
scoreboard players set @s Tmp1 166 {Item:{id:"minecraft:barrier"}}
# 167 - iron_trapdoor
scoreboard players set @s Tmp1 167 {Item:{id:"minecraft:iron_trapdoor"}}
# 168 - prismarine
scoreboard players set @s Tmp1 168 {Item:{id:"minecraft:prismarine"}}
# 169 - sea_lantern
scoreboard players set @s Tmp1 169 {Item:{id:"minecraft:sea_lantern"}}
# 170 - hay_block
scoreboard players set @s Tmp1 170 {Item:{id:"minecraft:hay_block"}}
# 171 - carpet
scoreboard players set @s Tmp1 171 {Item:{id:"minecraft:carpet"}}
# 172 - hardened_clay
scoreboard players set @s Tmp1 172 {Item:{id:"minecraft:hardened_clay"}}
# 173 - coal_block
scoreboard players set @s Tmp1 173 {Item:{id:"minecraft:coal_block"}}
# 174 - packed_ice
scoreboard players set @s Tmp1 174 {Item:{id:"minecraft:packed_ice"}}
# 175 - double_plant
scoreboard players set @s Tmp1 175 {Item:{id:"minecraft:double_plant"}}
# 176 - standing_banner
scoreboard players set @s Tmp1 176 {Item:{id:"minecraft:standing_banner"}}
# 177 - wall_banner
scoreboard players set @s Tmp1 177 {Item:{id:"minecraft:wall_banner"}}
# 178 - daylight_detector_inverted
scoreboard players set @s Tmp1 178 {Item:{id:"minecraft:daylight_detector_inverted"}}
# 179 - red_sandstone
scoreboard players set @s Tmp1 179 {Item:{id:"minecraft:red_sandstone"}}
# 180 - red_sandstone_stairs
scoreboard players set @s Tmp1 180 {Item:{id:"minecraft:red_sandstone_stairs"}}
# 181 - double_stone_slab2
scoreboard players set @s Tmp1 181 {Item:{id:"minecraft:double_stone_slab2"}}
# 182 - stone_slab
scoreboard players set @s Tmp1 182 {Item:{id:"minecraft:stone_slab"}}
# 183 - spruce_fence_gate
scoreboard players set @s Tmp1 183 {Item:{id:"minecraft:spruce_fence_gate"}}
# 184 - birch_fence_gate
scoreboard players set @s Tmp1 184 {Item:{id:"minecraft:birch_fence_gate"}}
# 185 - jungle_fence_gate
scoreboard players set @s Tmp1 185 {Item:{id:"minecraft:jungle_fence_gate"}}
# 186 - dark_oak_fence_gate
scoreboard players set @s Tmp1 186 {Item:{id:"minecraft:dark_oak_fence_gate"}}
# 187 - acacia_fence_gate
scoreboard players set @s Tmp1 187 {Item:{id:"minecraft:acacia_fence_gate"}}
# 188 - spruce_fence
scoreboard players set @s Tmp1 188 {Item:{id:"minecraft:spruce_fence"}}
# 189 - birch_fence
scoreboard players set @s Tmp1 189 {Item:{id:"minecraft:birch_fence"}}
# 190 - jungle_fence
scoreboard players set @s Tmp1 190 {Item:{id:"minecraft:jungle_fence"}}
# 191 - dark_oak_fence
scoreboard players set @s Tmp1 191 {Item:{id:"minecraft:dark_oak_fence"}}
# 192 - acacia_fence
scoreboard players set @s Tmp1 192 {Item:{id:"minecraft:acacia_fence"}}
# 193 - spruce_door
scoreboard players set @s Tmp1 193 {Item:{id:"minecraft:spruce_door"}}
# 194 - birch_door
scoreboard players set @s Tmp1 194 {Item:{id:"minecraft:birch_door"}}
# 195 - jungle_door
scoreboard players set @s Tmp1 195 {Item:{id:"minecraft:jungle_door"}}
# 196 - acacia_door
scoreboard players set @s Tmp1 196 {Item:{id:"minecraft:acacia_door"}}
# 197 - dark_oak_door
scoreboard players set @s Tmp1 197 {Item:{id:"minecraft:dark_oak_door"}}
# 198 - end_rod
scoreboard players set @s Tmp1 198 {Item:{id:"minecraft:end_rod"}}
# 199 - chorus_plant
scoreboard players set @s Tmp1 199 {Item:{id:"minecraft:chorus_plant"}}
# 200 - chorus_flower
scoreboard players set @s Tmp1 200 {Item:{id:"minecraft:chorus_flower"}}
# 201 - purpur_block
scoreboard players set @s Tmp1 201 {Item:{id:"minecraft:purpur_block"}}
# 202 - purpur_pillar
scoreboard players set @s Tmp1 202 {Item:{id:"minecraft:purpur_pillar"}}
# 203 - purpur_stairs
scoreboard players set @s Tmp1 203 {Item:{id:"minecraft:purpur_stairs"}}
# 204 - purpur_double_slab
scoreboard players set @s Tmp1 204 {Item:{id:"minecraft:purpur_double_slab"}}
# 205 - purpur_slab
scoreboard players set @s Tmp1 205 {Item:{id:"minecraft:purpur_slab"}}
# 206 - end_bricks
scoreboard players set @s Tmp1 206 {Item:{id:"minecraft:end_bricks"}}
# 207 - beetroot
scoreboard players set @s Tmp1 207 {Item:{id:"minecraft:beetroot"}}
# 208 - grass_path
scoreboard players set @s Tmp1 208 {Item:{id:"minecraft:grass_path"}}
# 209 - end_gateway
scoreboard players set @s Tmp1 209 {Item:{id:"minecraft:end_gateway"}}
# 210 - repeating_command_block
scoreboard players set @s Tmp1 210 {Item:{id:"minecraft:repeating_command_block"}}
# 211 - chain_command_block
scoreboard players set @s Tmp1 211 {Item:{id:"minecraft:chain_command_block"}}
# 212 - frosted_ice
scoreboard players set @s Tmp1 212 {Item:{id:"minecraft:frosted_ice"}}
# 213 - magma
scoreboard players set @s Tmp1 213 {Item:{id:"minecraft:magma"}}
# 214 - nether_wart_block
scoreboard players set @s Tmp1 214 {Item:{id:"minecraft:nether_wart_block"}}
# 215 - red_nether_brick
scoreboard players set @s Tmp1 215 {Item:{id:"minecraft:red_nether_brick"}}
# 216 - bone_block
scoreboard players set @s Tmp1 216 {Item:{id:"minecraft:bone_block"}}
# 217 - structure_void
scoreboard players set @s Tmp1 217 {Item:{id:"minecraft:structure_void"}}
# 218 - observer
scoreboard players set @s Tmp1 218 {Item:{id:"minecraft:observer"}}
# 219 - white_shulker_box
scoreboard players set @s Tmp1 219 {Item:{id:"minecraft:white_shulker_box"}}
# 220 - orange_shulker_box
scoreboard players set @s Tmp1 220 {Item:{id:"minecraft:orange_shulker_box"}}
# 221 - magenta_shulker_box
scoreboard players set @s Tmp1 221 {Item:{id:"minecraft:magenta_shulker_box"}}
# 222 - light_blue_shulker_box
scoreboard players set @s Tmp1 222 {Item:{id:"minecraft:light_blue_shulker_box"}}
# 223 - yellow_shulker_box
scoreboard players set @s Tmp1 223 {Item:{id:"minecraft:yellow_shulker_box"}}
# 224 - lime_shulker_box
scoreboard players set @s Tmp1 224 {Item:{id:"minecraft:lime_shulker_box"}}
# 225 - pink_shulker_box
scoreboard players set @s Tmp1 225 {Item:{id:"minecraft:pink_shulker_box"}}
# 226 - gray_shulker_box
scoreboard players set @s Tmp1 226 {Item:{id:"minecraft:gray_shulker_box"}}
# 227 - silver_shulker_box
scoreboard players set @s Tmp1 227 {Item:{id:"minecraft:silver_shulker_box"}}
# 228 - cyan_shulker_box
scoreboard players set @s Tmp1 228 {Item:{id:"minecraft:cyan_shulker_box"}}
# 229 - purple_shulker_box
scoreboard players set @s Tmp1 229 {Item:{id:"minecraft:purple_shulker_box"}}
# 230 - blue_shulker_box
scoreboard players set @s Tmp1 230 {Item:{id:"minecraft:blue_shulker_box"}}
# 231 - brown_shulker_box
scoreboard players set @s Tmp1 231 {Item:{id:"minecraft:brown_shulker_box"}}
# 232 - green_shulker_box
scoreboard players set @s Tmp1 232 {Item:{id:"minecraft:green_shulker_box"}}
# 233 - red_shulker_box
scoreboard players set @s Tmp1 233 {Item:{id:"minecraft:red_shulker_box"}}
# 234 - black_shulker_box
scoreboard players set @s Tmp1 234 {Item:{id:"minecraft:black_shulker_box"}}
# 235 - white_glazed_terracotta
scoreboard players set @s Tmp1 235 {Item:{id:"minecraft:white_glazed_terracotta"}}
# 236 - orange_glazed_terracotta
scoreboard players set @s Tmp1 236 {Item:{id:"minecraft:orange_glazed_terracotta"}}
# 237 - magenta_glazed_terracotta
scoreboard players set @s Tmp1 237 {Item:{id:"minecraft:magenta_glazed_terracotta"}}
# 238 - light_blue_glazed_terracotta
scoreboard players set @s Tmp1 238 {Item:{id:"minecraft:light_blue_glazed_terracotta"}}
# 239 - yellow_glazed_terracotta
scoreboard players set @s Tmp1 239 {Item:{id:"minecraft:yellow_glazed_terracotta"}}
# 240 - lime_glazed_terracotta
scoreboard players set @s Tmp1 240 {Item:{id:"minecraft:lime_glazed_terracotta"}}
# 241 - pink_glazed_terracotta
scoreboard players set @s Tmp1 241 {Item:{id:"minecraft:pink_glazed_terracotta"}}
# 242 - gray_glazed_terracotta
scoreboard players set @s Tmp1 242 {Item:{id:"minecraft:gray_glazed_terracotta"}}
# 243 - light_gray_glazed_terracotta
scoreboard players set @s Tmp1 243 {Item:{id:"minecraft:light_gray_glazed_terracotta"}}
# 244 - cyan_glazed_terracotta
scoreboard players set @s Tmp1 244 {Item:{id:"minecraft:cyan_glazed_terracotta"}}
# 245 - purple_glazed_terracotta
scoreboard players set @s Tmp1 245 {Item:{id:"minecraft:purple_glazed_terracotta"}}
# 246 - blue_glazed_terracotta
scoreboard players set @s Tmp1 246 {Item:{id:"minecraft:blue_glazed_terracotta"}}
# 247 - brown_glazed_terracotta
scoreboard players set @s Tmp1 247 {Item:{id:"minecraft:brown_glazed_terracotta"}}
# 248 - green_glazed_terracotta
scoreboard players set @s Tmp1 248 {Item:{id:"minecraft:green_glazed_terracotta"}}
# 249 - red_glazed_terracotta
scoreboard players set @s Tmp1 249 {Item:{id:"minecraft:red_glazed_terracotta"}}
# 250 - black_glazed_terracotta
scoreboard players set @s Tmp1 250 {Item:{id:"minecraft:black_glazed_terracotta"}}
# 251 - concrete
scoreboard players set @s Tmp1 251 {Item:{id:"minecraft:concrete"}}
# 252 - concrete_powder
scoreboard players set @s Tmp1 252 {Item:{id:"minecraft:concrete_powder"}}
# 253 - none
scoreboard players set @s Tmp1 253 {Item:{id:"minecraft:none"}}
# 254 - none
scoreboard players set @s Tmp1 254 {Item:{id:"minecraft:none"}}
# 255 - structure_block
scoreboard players set @s Tmp1 255 {Item:{id:"minecraft:structure_block"}}