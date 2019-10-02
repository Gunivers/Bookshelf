# SYSTEME MAINHAND TO ID
# by Luludatra

# La fonction va donner les scores BlockID et BlockDamage à @s en fonction de son block dans sa mainhand

# ---------------------------------------------------------------------------------------

scoreboard objectives add BlockID dummy
scoreboard objectives add BlockDamage dummy

# ---------------------------------------------------------------------------------------

# Damage
scoreboard players set @s BlockDamage 0 {SelectedItem:{Damage:0s}}
scoreboard players set @s BlockDamage 1 {SelectedItem:{Damage:1s}}
scoreboard players set @s BlockDamage 2 {SelectedItem:{Damage:2s}}
scoreboard players set @s BlockDamage 3 {SelectedItem:{Damage:3s}}
scoreboard players set @s BlockDamage 4 {SelectedItem:{Damage:4s}}
scoreboard players set @s BlockDamage 5 {SelectedItem:{Damage:5s}}
scoreboard players set @s BlockDamage 6 {SelectedItem:{Damage:6s}}
scoreboard players set @s BlockDamage 7 {SelectedItem:{Damage:7s}}
scoreboard players set @s BlockDamage 8 {SelectedItem:{Damage:8s}}
scoreboard players set @s BlockDamage 9 {SelectedItem:{Damage:9s}}
scoreboard players set @s BlockDamage 10 {SelectedItem:{Damage:10s}}
scoreboard players set @s BlockDamage 11 {SelectedItem:{Damage:11s}}
scoreboard players set @s BlockDamage 12 {SelectedItem:{Damage:12s}}
scoreboard players set @s BlockDamage 13 {SelectedItem:{Damage:13s}}
scoreboard players set @s BlockDamage 14 {SelectedItem:{Damage:14s}}
scoreboard players set @s BlockDamage 15 {SelectedItem:{Damage:15s}}


# 0 - air
scoreboard players set @s BlockID 0 {SelectedItem:{id:"minecraft:air"}}
# 1 - stone
scoreboard players set @s BlockID 1 {SelectedItem:{id:"minecraft:stone"}}
# 2 - grass
scoreboard players set @s BlockID 2 {SelectedItem:{id:"minecraft:grass"}}
# 3 - dirt
scoreboard players set @s BlockID 3 {SelectedItem:{id:"minecraft:dirt"}}
# 4 - cobblestone
scoreboard players set @s BlockID 4 {SelectedItem:{id:"minecraft:cobblestone"}}
# 5 - planks
scoreboard players set @s BlockID 5 {SelectedItem:{id:"minecraft:planks"}}
# 6 - sapling
scoreboard players set @s BlockID 6 {SelectedItem:{id:"minecraft:sapling"}}
# 7 - bedrock
scoreboard players set @s BlockID 7 {SelectedItem:{id:"minecraft:bedrock"}}
# 8 - flowing_water
scoreboard players set @s BlockID 8 {SelectedItem:{id:"minecraft:flowing_water"}}
# 9 - water
scoreboard players set @s BlockID 9 {SelectedItem:{id:"minecraft:water"}}
# 10 - flowing_lava
scoreboard players set @s BlockID 10 {SelectedItem:{id:"minecraft:flowing_lava"}}
# 11 - lava
scoreboard players set @s BlockID 11 {SelectedItem:{id:"minecraft:lava"}}
# 12 - sand
scoreboard players set @s BlockID 12 {SelectedItem:{id:"minecraft:sand"}}
# 13 - gravel
scoreboard players set @s BlockID 13 {SelectedItem:{id:"minecraft:gravel"}}
# 14 - gold_ore
scoreboard players set @s BlockID 14 {SelectedItem:{id:"minecraft:gold_ore"}}
# 15 - iron_ore
scoreboard players set @s BlockID 15 {SelectedItem:{id:"minecraft:iron_ore"}}
# 16 - coal_ore
scoreboard players set @s BlockID 16 {SelectedItem:{id:"minecraft:coal_ore"}}
# 17 - log
scoreboard players set @s BlockID 17 {SelectedItem:{id:"minecraft:log"}}
# 18 - leaves
scoreboard players set @s BlockID 18 {SelectedItem:{id:"minecraft:leaves"}}
# 19 - sponge
scoreboard players set @s BlockID 19 {SelectedItem:{id:"minecraft:sponge"}}
# 20 - glass
scoreboard players set @s BlockID 20 {SelectedItem:{id:"minecraft:glass"}}
# 21 - lapis_ore
scoreboard players set @s BlockID 21 {SelectedItem:{id:"minecraft:lapis_ore"}}
# 22 - lapis_block
scoreboard players set @s BlockID 22 {SelectedItem:{id:"minecraft:lapis_block"}}
# 23 - dispenser
scoreboard players set @s BlockID 23 {SelectedItem:{id:"minecraft:dispenser"}}
# 24 - sandstone
scoreboard players set @s BlockID 24 {SelectedItem:{id:"minecraft:sandstone"}}
# 25 - noteblock
scoreboard players set @s BlockID 25 {SelectedItem:{id:"minecraft:noteblock"}}
# 26 - bed
scoreboard players set @s BlockID 26 {SelectedItem:{id:"minecraft:bed"}}
# 27 - golden_rail
scoreboard players set @s BlockID 27 {SelectedItem:{id:"minecraft:golden_rail"}}
# 28 - detector_rail
scoreboard players set @s BlockID 28 {SelectedItem:{id:"minecraft:detector_rail"}}
# 29 - sticky_piston
scoreboard players set @s BlockID 29 {SelectedItem:{id:"minecraft:sticky_piston"}}
# 30 - web
scoreboard players set @s BlockID 30 {SelectedItem:{id:"minecraft:web"}}
# 31 - tallgrass
scoreboard players set @s BlockID 31 {SelectedItem:{id:"minecraft:tallgrass"}}
# 32 - deadbush
scoreboard players set @s BlockID 32 {SelectedItem:{id:"minecraft:deadbush"}}
# 33 - piston
scoreboard players set @s BlockID 33 {SelectedItem:{id:"minecraft:piston"}}
# 34 - piston_head
scoreboard players set @s BlockID 34 {SelectedItem:{id:"minecraft:piston_head"}}
# 35 - wool
scoreboard players set @s BlockID 35 {SelectedItem:{id:"minecraft:wool"}}
# 36 - none
scoreboard players set @s BlockID 36 {SelectedItem:{id:"minecraft:none"}}
# 37 - yellow_flower
scoreboard players set @s BlockID 37 {SelectedItem:{id:"minecraft:yellow_flower"}}
# 38 - red_flower
scoreboard players set @s BlockID 38 {SelectedItem:{id:"minecraft:red_flower"}}
# 39 - brown_mushroom
scoreboard players set @s BlockID 39 {SelectedItem:{id:"minecraft:brown_mushroom"}}
# 40 - red_mushroom
scoreboard players set @s BlockID 40 {SelectedItem:{id:"minecraft:red_mushroom"}}
# 41 - gold_block
scoreboard players set @s BlockID 41 {SelectedItem:{id:"minecraft:gold_block"}}
# 42 - iron_block
scoreboard players set @s BlockID 42 {SelectedItem:{id:"minecraft:iron_block"}}
# 43 - double_slab
scoreboard players set @s BlockID 43 {SelectedItem:{id:"minecraft:double_slab"}}
# 44 - stone_slab
scoreboard players set @s BlockID 44 {SelectedItem:{id:"minecraft:stone_slab"}}
# 45 - brick
scoreboard players set @s BlockID 45 {SelectedItem:{id:"minecraft:brick"}}
# 46 - tnt
scoreboard players set @s BlockID 46 {SelectedItem:{id:"minecraft:tnt"}}
# 47 - bookshelf
scoreboard players set @s BlockID 47 {SelectedItem:{id:"minecraft:bookshelf"}}
# 48 - mossy_cobblestone
scoreboard players set @s BlockID 48 {SelectedItem:{id:"minecraft:mossy_cobblestone"}}
# 49 - obsidian
scoreboard players set @s BlockID 49 {SelectedItem:{id:"minecraft:obsidian"}}
# 50 - torch
scoreboard players set @s BlockID 50 {SelectedItem:{id:"minecraft:torch"}}
# 51 - fire
scoreboard players set @s BlockID 51 {SelectedItem:{id:"minecraft:fire"}}
# 52 - mob_spawner
scoreboard players set @s BlockID 52 {SelectedItem:{id:"minecraft:mob_spawner"}}
# 53 - oak_stairs
scoreboard players set @s BlockID 53 {SelectedItem:{id:"minecraft:oak_stairs"}}
# 54 - chest
scoreboard players set @s BlockID 54 {SelectedItem:{id:"minecraft:chest"}}
# 55 - redstone_wire
scoreboard players set @s BlockID 55 {SelectedItem:{id:"minecraft:redstone_wire"}}
# 56 - diamond_ore
scoreboard players set @s BlockID 56 {SelectedItem:{id:"minecraft:diamond_ore"}}
# 57 - diamond_block
scoreboard players set @s BlockID 57 {SelectedItem:{id:"minecraft:diamond_block"}}
# 58 - crafting_table
scoreboard players set @s BlockID 58 {SelectedItem:{id:"minecraft:crafting_table"}}
# 59 - wheat
scoreboard players set @s BlockID 59 {SelectedItem:{id:"minecraft:wheat"}}
# 60 - farmland
scoreboard players set @s BlockID 60 {SelectedItem:{id:"minecraft:farmland"}}
# 61 - furnace
scoreboard players set @s BlockID 61 {SelectedItem:{id:"minecraft:furnace"}}
# 62 - lit_furnace
scoreboard players set @s BlockID 62 {SelectedItem:{id:"minecraft:lit_furnace"}}
# 63 - standing_sign
scoreboard players set @s BlockID 63 {SelectedItem:{id:"minecraft:standing_sign"}}
# 64 - wooden_door
scoreboard players set @s BlockID 64 {SelectedItem:{id:"minecraft:wooden_door"}}
# 65 - ladder
scoreboard players set @s BlockID 65 {SelectedItem:{id:"minecraft:ladder"}}
# 66 - rail
scoreboard players set @s BlockID 66 {SelectedItem:{id:"minecraft:rail"}}
# 67 - stone_stairs
scoreboard players set @s BlockID 67 {SelectedItem:{id:"minecraft:stone_stairs"}}
# 68 - wall_sign
scoreboard players set @s BlockID 68 {SelectedItem:{id:"minecraft:wall_sign"}}
# 69 - lever
scoreboard players set @s BlockID 69 {SelectedItem:{id:"minecraft:lever"}}
# 70 - stone_pressure_plate
scoreboard players set @s BlockID 70 {SelectedItem:{id:"minecraft:stone_pressure_plate"}}
# 71 - iron_door
scoreboard players set @s BlockID 71 {SelectedItem:{id:"minecraft:iron_door"}}
# 72 - wooden_pressure_plate
scoreboard players set @s BlockID 72 {SelectedItem:{id:"minecraft:wooden_pressure_plate"}}
# 73 - redstone_ore
scoreboard players set @s BlockID 73 {SelectedItem:{id:"minecraft:redstone_ore"}}
# 74 - lit_redstone_ore
scoreboard players set @s BlockID 74 {SelectedItem:{id:"minecraft:lit_redstone_ore"}}
# 75 - unlit_redstone_torch
scoreboard players set @s BlockID 75 {SelectedItem:{id:"minecraft:unlit_redstone_torch"}}
# 76 - redstone_torch
scoreboard players set @s BlockID 76 {SelectedItem:{id:"minecraft:redstone_torch"}}
# 77 - stone_button
scoreboard players set @s BlockID 77 {SelectedItem:{id:"minecraft:stone_button"}}
# 78 - snow_layer
scoreboard players set @s BlockID 78 {SelectedItem:{id:"minecraft:snow_layer"}}
# 79 - ice
scoreboard players set @s BlockID 79 {SelectedItem:{id:"minecraft:ice"}}
# 80 - snow
scoreboard players set @s BlockID 80 {SelectedItem:{id:"minecraft:snow"}}
# 81 - cactus
scoreboard players set @s BlockID 81 {SelectedItem:{id:"minecraft:cactus"}}
# 82 - clay
scoreboard players set @s BlockID 82 {SelectedItem:{id:"minecraft:clay"}}
# 83 - reeds
scoreboard players set @s BlockID 83 {SelectedItem:{id:"minecraft:reeds"}}
# 84 - jukebox
scoreboard players set @s BlockID 84 {SelectedItem:{id:"minecraft:jukebox"}}
# 85 - fence
scoreboard players set @s BlockID 85 {SelectedItem:{id:"minecraft:fence"}}
# 86 - pumpkin
scoreboard players set @s BlockID 86 {SelectedItem:{id:"minecraft:pumpkin"}}
# 87 - netherrack
scoreboard players set @s BlockID 87 {SelectedItem:{id:"minecraft:netherrack"}}
# 88 - soul_sand
scoreboard players set @s BlockID 88 {SelectedItem:{id:"minecraft:soul_sand"}}
# 89 - glowstone
scoreboard players set @s BlockID 89 {SelectedItem:{id:"minecraft:glowstone"}}
# 90 - portal
scoreboard players set @s BlockID 90 {SelectedItem:{id:"minecraft:portal"}}
# 91 - lit_pumpkin
scoreboard players set @s BlockID 91 {SelectedItem:{id:"minecraft:lit_pumpkin"}}
# 92 - cake
scoreboard players set @s BlockID 92 {SelectedItem:{id:"minecraft:cake"}}
# 93 - unpowered_repeater
scoreboard players set @s BlockID 93 {SelectedItem:{id:"minecraft:unpowered_repeater"}}
# 94 - powered_repeater
scoreboard players set @s BlockID 94 {SelectedItem:{id:"minecraft:powered_repeater"}}
# 95 - stained_glass
scoreboard players set @s BlockID 95 {SelectedItem:{id:"minecraft:stained_glass"}}
# 96 - trapdoor
scoreboard players set @s BlockID 96 {SelectedItem:{id:"minecraft:trapdoor"}}
# 97 - monster_egg
scoreboard players set @s BlockID 97 {SelectedItem:{id:"minecraft:monster_egg"}}
# 98 - stonebrick
scoreboard players set @s BlockID 98 {SelectedItem:{id:"minecraft:stonebrick"}}
# 99 - brown_mushroom_block
scoreboard players set @s BlockID 99 {SelectedItem:{id:"minecraft:brown_mushroom_block"}}
# 100 - red_mushroom_block
scoreboard players set @s BlockID 100 {SelectedItem:{id:"minecraft:red_mushroom_block"}}
# 101 - iron_bars
scoreboard players set @s BlockID 101 {SelectedItem:{id:"minecraft:iron_bars"}}
# 102 - glass_pane
scoreboard players set @s BlockID 102 {SelectedItem:{id:"minecraft:glass_pane"}}
# 103 - melon_block
scoreboard players set @s BlockID 103 {SelectedItem:{id:"minecraft:melon_block"}}
# 104 - pumpkin_stem
scoreboard players set @s BlockID 104 {SelectedItem:{id:"minecraft:pumpkin_stem"}}
# 105 - melon_stem
scoreboard players set @s BlockID 105 {SelectedItem:{id:"minecraft:melon_stem"}}
# 106 - vine
scoreboard players set @s BlockID 106 {SelectedItem:{id:"minecraft:vine"}}
# 107 - fence_gate
scoreboard players set @s BlockID 107 {SelectedItem:{id:"minecraft:fence_gate"}}
# 108 - brick_stairs
scoreboard players set @s BlockID 108 {SelectedItem:{id:"minecraft:brick_stairs"}}
# 109 - stone_brick_stairs
scoreboard players set @s BlockID 109 {SelectedItem:{id:"minecraft:stone_brick_stairs"}}
# 110 - mycelium
scoreboard players set @s BlockID 110 {SelectedItem:{id:"minecraft:mycelium"}}
# 111 - waterlily
scoreboard players set @s BlockID 111 {SelectedItem:{id:"minecraft:waterlily"}}
# 112 - nether_brick
scoreboard players set @s BlockID 112 {SelectedItem:{id:"minecraft:nether_brick"}}
# 113 - nether_brick_fence
scoreboard players set @s BlockID 113 {SelectedItem:{id:"minecraft:nether_brick_fence"}}
# 114 - nether_brick_stairs
scoreboard players set @s BlockID 114 {SelectedItem:{id:"minecraft:nether_brick_stairs"}}
# 115 - nether_wart
scoreboard players set @s BlockID 115 {SelectedItem:{id:"minecraft:nether_wart"}}
# 116 - enchanting_table
scoreboard players set @s BlockID 116 {SelectedItem:{id:"minecraft:enchanting_table"}}
# 117 - brewing_stand
scoreboard players set @s BlockID 117 {SelectedItem:{id:"minecraft:brewing_stand"}}
# 118 - cauldron
scoreboard players set @s BlockID 118 {SelectedItem:{id:"minecraft:cauldron"}}
# 119 - end_portal
scoreboard players set @s BlockID 119 {SelectedItem:{id:"minecraft:end_portal"}}
# 120 - end_portal_frame
scoreboard players set @s BlockID 120 {SelectedItem:{id:"minecraft:end_portal_frame"}}
# 121 - end_stone
scoreboard players set @s BlockID 121 {SelectedItem:{id:"minecraft:end_stone"}}
# 122 - dragon_egg
scoreboard players set @s BlockID 122 {SelectedItem:{id:"minecraft:dragon_egg"}}
# 123 - redstone_lamp
scoreboard players set @s BlockID 123 {SelectedItem:{id:"minecraft:redstone_lamp"}}
# 124 - lit_redstone_lamp
scoreboard players set @s BlockID 124 {SelectedItem:{id:"minecraft:lit_redstone_lamp"}}
# 125 - double_wooden_slab
scoreboard players set @s BlockID 125 {SelectedItem:{id:"minecraft:double_wooden_slab"}}
# 126 - wooden_slab
scoreboard players set @s BlockID 126 {SelectedItem:{id:"minecraft:wooden_slab"}}
# 127 - cocoa
scoreboard players set @s BlockID 127 {SelectedItem:{id:"minecraft:cocoa"}}
# 128 - sandstone_stairs
scoreboard players set @s BlockID 128 {SelectedItem:{id:"minecraft:sandstone_stairs"}}
# 129 - emerald_ore
scoreboard players set @s BlockID 129 {SelectedItem:{id:"minecraft:emerald_ore"}}
# 130 - ender_chest
scoreboard players set @s BlockID 130 {SelectedItem:{id:"minecraft:ender_chest"}}
# 131 - tripwire_hook
scoreboard players set @s BlockID 131 {SelectedItem:{id:"minecraft:tripwire_hook"}}
# 132 - tripwire
scoreboard players set @s BlockID 132 {SelectedItem:{id:"minecraft:tripwire"}}
# 133 - emerald_block
scoreboard players set @s BlockID 133 {SelectedItem:{id:"minecraft:emerald_block"}}
# 134 - spruce_stairs
scoreboard players set @s BlockID 134 {SelectedItem:{id:"minecraft:spruce_stairs"}}
# 135 - birch_stairs
scoreboard players set @s BlockID 135 {SelectedItem:{id:"minecraft:birch_stairs"}}
# 136 - jungle_stairs
scoreboard players set @s BlockID 136 {SelectedItem:{id:"minecraft:jungle_stairs"}}
# 137 - command_block
scoreboard players set @s BlockID 137 {SelectedItem:{id:"minecraft:command_block"}}
# 138 - beacon
scoreboard players set @s BlockID 138 {SelectedItem:{id:"minecraft:beacon"}}
# 139 - cobblestone_wall
scoreboard players set @s BlockID 139 {SelectedItem:{id:"minecraft:cobblestone_wall"}}
# 140 - flower_pot
scoreboard players set @s BlockID 140 {SelectedItem:{id:"minecraft:flower_pot"}}
# 141 - carrots
scoreboard players set @s BlockID 141 {SelectedItem:{id:"minecraft:carrots"}}
# 142 - potatoes
scoreboard players set @s BlockID 142 {SelectedItem:{id:"minecraft:potatoes"}}
# 143 - wooden_button
scoreboard players set @s BlockID 143 {SelectedItem:{id:"minecraft:wooden_button"}}
# 144 - skull
scoreboard players set @s BlockID 144 {SelectedItem:{id:"minecraft:skull"}}
# 145 - anvil
scoreboard players set @s BlockID 145 {SelectedItem:{id:"minecraft:anvil"}}
# 146 - trapped_chest
scoreboard players set @s BlockID 146 {SelectedItem:{id:"minecraft:trapped_chest"}}
# 147 - light_weighted_pressure_plate
scoreboard players set @s BlockID 147 {SelectedItem:{id:"minecraft:light_weighted_pressure_plate"}}
# 148 - heavy_weighted_pressure_plate
scoreboard players set @s BlockID 148 {SelectedItem:{id:"minecraft:heavy_weighted_pressure_plate"}}
# 149 - unpowered_comparator
scoreboard players set @s BlockID 149 {SelectedItem:{id:"minecraft:unpowered_comparator"}}
# 150 - powered_comparator
scoreboard players set @s BlockID 150 {SelectedItem:{id:"minecraft:powered_comparator"}}
# 151 - daylight_detector
scoreboard players set @s BlockID 151 {SelectedItem:{id:"minecraft:daylight_detector"}}
# 152 - redstone_block
scoreboard players set @s BlockID 152 {SelectedItem:{id:"minecraft:redstone_block"}}
# 153 - quartz_ore
scoreboard players set @s BlockID 153 {SelectedItem:{id:"minecraft:quartz_ore"}}
# 154 - hopper
scoreboard players set @s BlockID 154 {SelectedItem:{id:"minecraft:hopper"}}
# 155 - quartz_block
scoreboard players set @s BlockID 155 {SelectedItem:{id:"minecraft:quartz_block"}}
# 156 - quartz_stairs
scoreboard players set @s BlockID 156 {SelectedItem:{id:"minecraft:quartz_stairs"}}
# 157 - activator_rail
scoreboard players set @s BlockID 157 {SelectedItem:{id:"minecraft:activator_rail"}}
# 158 - dropper
scoreboard players set @s BlockID 158 {SelectedItem:{id:"minecraft:dropper"}}
# 159 - stained_hardened_clay
scoreboard players set @s BlockID 159 {SelectedItem:{id:"minecraft:stained_hardened_clay"}}
# 160 - stained_glass_pane
scoreboard players set @s BlockID 160 {SelectedItem:{id:"minecraft:stained_glass_pane"}}
# 161 - leaves2
scoreboard players set @s BlockID 161 {SelectedItem:{id:"minecraft:leaves2"}}
# 162 - log2
scoreboard players set @s BlockID 162 {SelectedItem:{id:"minecraft:log2"}}
# 163 - acacia_stairs
scoreboard players set @s BlockID 163 {SelectedItem:{id:"minecraft:acacia_stairs"}}
# 164 - dark_oak_stairs
scoreboard players set @s BlockID 164 {SelectedItem:{id:"minecraft:dark_oak_stairs"}}
# 165 - slime
scoreboard players set @s BlockID 165 {SelectedItem:{id:"minecraft:slime"}}
# 166 - barrier
scoreboard players set @s BlockID 166 {SelectedItem:{id:"minecraft:barrier"}}
# 167 - iron_trapdoor
scoreboard players set @s BlockID 167 {SelectedItem:{id:"minecraft:iron_trapdoor"}}
# 168 - prismarine
scoreboard players set @s BlockID 168 {SelectedItem:{id:"minecraft:prismarine"}}
# 169 - sea_lantern
scoreboard players set @s BlockID 169 {SelectedItem:{id:"minecraft:sea_lantern"}}
# 170 - hay_block
scoreboard players set @s BlockID 170 {SelectedItem:{id:"minecraft:hay_block"}}
# 171 - carpet
scoreboard players set @s BlockID 171 {SelectedItem:{id:"minecraft:carpet"}}
# 172 - hardened_clay
scoreboard players set @s BlockID 172 {SelectedItem:{id:"minecraft:hardened_clay"}}
# 173 - coal_block
scoreboard players set @s BlockID 173 {SelectedItem:{id:"minecraft:coal_block"}}
# 174 - packed_ice
scoreboard players set @s BlockID 174 {SelectedItem:{id:"minecraft:packed_ice"}}
# 175 - double_plant
scoreboard players set @s BlockID 175 {SelectedItem:{id:"minecraft:double_plant"}}
# 176 - standing_banner
scoreboard players set @s BlockID 176 {SelectedItem:{id:"minecraft:standing_banner"}}
# 177 - wall_banner
scoreboard players set @s BlockID 177 {SelectedItem:{id:"minecraft:wall_banner"}}
# 178 - daylight_detector_inverted
scoreboard players set @s BlockID 178 {SelectedItem:{id:"minecraft:daylight_detector_inverted"}}
# 179 - red_sandstone
scoreboard players set @s BlockID 179 {SelectedItem:{id:"minecraft:red_sandstone"}}
# 180 - red_sandstone_stairs
scoreboard players set @s BlockID 180 {SelectedItem:{id:"minecraft:red_sandstone_stairs"}}
# 181 - double_stone_slab2
scoreboard players set @s BlockID 181 {SelectedItem:{id:"minecraft:double_stone_slab2"}}
# 182 - stone_slab
scoreboard players set @s BlockID 182 {SelectedItem:{id:"minecraft:stone_slab"}}
# 183 - spruce_fence_gate
scoreboard players set @s BlockID 183 {SelectedItem:{id:"minecraft:spruce_fence_gate"}}
# 184 - birch_fence_gate
scoreboard players set @s BlockID 184 {SelectedItem:{id:"minecraft:birch_fence_gate"}}
# 185 - jungle_fence_gate
scoreboard players set @s BlockID 185 {SelectedItem:{id:"minecraft:jungle_fence_gate"}}
# 186 - dark_oak_fence_gate
scoreboard players set @s BlockID 186 {SelectedItem:{id:"minecraft:dark_oak_fence_gate"}}
# 187 - acacia_fence_gate
scoreboard players set @s BlockID 187 {SelectedItem:{id:"minecraft:acacia_fence_gate"}}
# 188 - spruce_fence
scoreboard players set @s BlockID 188 {SelectedItem:{id:"minecraft:spruce_fence"}}
# 189 - birch_fence
scoreboard players set @s BlockID 189 {SelectedItem:{id:"minecraft:birch_fence"}}
# 190 - jungle_fence
scoreboard players set @s BlockID 190 {SelectedItem:{id:"minecraft:jungle_fence"}}
# 191 - dark_oak_fence
scoreboard players set @s BlockID 191 {SelectedItem:{id:"minecraft:dark_oak_fence"}}
# 192 - acacia_fence
scoreboard players set @s BlockID 192 {SelectedItem:{id:"minecraft:acacia_fence"}}
# 193 - spruce_door
scoreboard players set @s BlockID 193 {SelectedItem:{id:"minecraft:spruce_door"}}
# 194 - birch_door
scoreboard players set @s BlockID 194 {SelectedItem:{id:"minecraft:birch_door"}}
# 195 - jungle_door
scoreboard players set @s BlockID 195 {SelectedItem:{id:"minecraft:jungle_door"}}
# 196 - acacia_door
scoreboard players set @s BlockID 196 {SelectedItem:{id:"minecraft:acacia_door"}}
# 197 - dark_oak_door
scoreboard players set @s BlockID 197 {SelectedItem:{id:"minecraft:dark_oak_door"}}
# 198 - end_rod
scoreboard players set @s BlockID 198 {SelectedItem:{id:"minecraft:end_rod"}}
# 199 - chorus_plant
scoreboard players set @s BlockID 199 {SelectedItem:{id:"minecraft:chorus_plant"}}
# 200 - chorus_flower
scoreboard players set @s BlockID 200 {SelectedItem:{id:"minecraft:chorus_flower"}}
# 201 - purpur_block
scoreboard players set @s BlockID 201 {SelectedItem:{id:"minecraft:purpur_block"}}
# 202 - purpur_pillar
scoreboard players set @s BlockID 202 {SelectedItem:{id:"minecraft:purpur_pillar"}}
# 203 - purpur_stairs
scoreboard players set @s BlockID 203 {SelectedItem:{id:"minecraft:purpur_stairs"}}
# 204 - purpur_double_slab
scoreboard players set @s BlockID 204 {SelectedItem:{id:"minecraft:purpur_double_slab"}}
# 205 - purpur_slab
scoreboard players set @s BlockID 205 {SelectedItem:{id:"minecraft:purpur_slab"}}
# 206 - end_bricks
scoreboard players set @s BlockID 206 {SelectedItem:{id:"minecraft:end_bricks"}}
# 207 - beetroot
scoreboard players set @s BlockID 207 {SelectedItem:{id:"minecraft:beetroot"}}
# 208 - grass_path
scoreboard players set @s BlockID 208 {SelectedItem:{id:"minecraft:grass_path"}}
# 209 - end_gateway
scoreboard players set @s BlockID 209 {SelectedItem:{id:"minecraft:end_gateway"}}
# 210 - repeating_command_block
scoreboard players set @s BlockID 210 {SelectedItem:{id:"minecraft:repeating_command_block"}}
# 211 - chain_command_block
scoreboard players set @s BlockID 211 {SelectedItem:{id:"minecraft:chain_command_block"}}
# 212 - frosted_ice
scoreboard players set @s BlockID 212 {SelectedItem:{id:"minecraft:frosted_ice"}}
# 213 - magma
scoreboard players set @s BlockID 213 {SelectedItem:{id:"minecraft:magma"}}
# 214 - nether_wart_block
scoreboard players set @s BlockID 214 {SelectedItem:{id:"minecraft:nether_wart_block"}}
# 215 - red_nether_brick
scoreboard players set @s BlockID 215 {SelectedItem:{id:"minecraft:red_nether_brick"}}
# 216 - bone_block
scoreboard players set @s BlockID 216 {SelectedItem:{id:"minecraft:bone_block"}}
# 217 - structure_void
scoreboard players set @s BlockID 217 {SelectedItem:{id:"minecraft:structure_void"}}
# 218 - observer
scoreboard players set @s BlockID 218 {SelectedItem:{id:"minecraft:observer"}}
# 219 - white_shulker_box
scoreboard players set @s BlockID 219 {SelectedItem:{id:"minecraft:white_shulker_box"}}
# 220 - orange_shulker_box
scoreboard players set @s BlockID 220 {SelectedItem:{id:"minecraft:orange_shulker_box"}}
# 221 - magenta_shulker_box
scoreboard players set @s BlockID 221 {SelectedItem:{id:"minecraft:magenta_shulker_box"}}
# 222 - light_blue_shulker_box
scoreboard players set @s BlockID 222 {SelectedItem:{id:"minecraft:light_blue_shulker_box"}}
# 223 - yellow_shulker_box
scoreboard players set @s BlockID 223 {SelectedItem:{id:"minecraft:yellow_shulker_box"}}
# 224 - lime_shulker_box
scoreboard players set @s BlockID 224 {SelectedItem:{id:"minecraft:lime_shulker_box"}}
# 225 - pink_shulker_box
scoreboard players set @s BlockID 225 {SelectedItem:{id:"minecraft:pink_shulker_box"}}
# 226 - gray_shulker_box
scoreboard players set @s BlockID 226 {SelectedItem:{id:"minecraft:gray_shulker_box"}}
# 227 - silver_shulker_box
scoreboard players set @s BlockID 227 {SelectedItem:{id:"minecraft:silver_shulker_box"}}
# 228 - cyan_shulker_box
scoreboard players set @s BlockID 228 {SelectedItem:{id:"minecraft:cyan_shulker_box"}}
# 229 - purple_shulker_box
scoreboard players set @s BlockID 229 {SelectedItem:{id:"minecraft:purple_shulker_box"}}
# 230 - blue_shulker_box
scoreboard players set @s BlockID 230 {SelectedItem:{id:"minecraft:blue_shulker_box"}}
# 231 - brown_shulker_box
scoreboard players set @s BlockID 231 {SelectedItem:{id:"minecraft:brown_shulker_box"}}
# 232 - green_shulker_box
scoreboard players set @s BlockID 232 {SelectedItem:{id:"minecraft:green_shulker_box"}}
# 233 - red_shulker_box
scoreboard players set @s BlockID 233 {SelectedItem:{id:"minecraft:red_shulker_box"}}
# 234 - black_shulker_box
scoreboard players set @s BlockID 234 {SelectedItem:{id:"minecraft:black_shulker_box"}}
# 235 - white_glazed_terracotta
scoreboard players set @s BlockID 235 {SelectedItem:{id:"minecraft:white_glazed_terracotta"}}
# 236 - orange_glazed_terracotta
scoreboard players set @s BlockID 236 {SelectedItem:{id:"minecraft:orange_glazed_terracotta"}}
# 237 - magenta_glazed_terracotta
scoreboard players set @s BlockID 237 {SelectedItem:{id:"minecraft:magenta_glazed_terracotta"}}
# 238 - light_blue_glazed_terracotta
scoreboard players set @s BlockID 238 {SelectedItem:{id:"minecraft:light_blue_glazed_terracotta"}}
# 239 - yellow_glazed_terracotta
scoreboard players set @s BlockID 239 {SelectedItem:{id:"minecraft:yellow_glazed_terracotta"}}
# 240 - lime_glazed_terracotta
scoreboard players set @s BlockID 240 {SelectedItem:{id:"minecraft:lime_glazed_terracotta"}}
# 241 - pink_glazed_terracotta
scoreboard players set @s BlockID 241 {SelectedItem:{id:"minecraft:pink_glazed_terracotta"}}
# 242 - gray_glazed_terracotta
scoreboard players set @s BlockID 242 {SelectedItem:{id:"minecraft:gray_glazed_terracotta"}}
# 243 - light_gray_glazed_terracotta
scoreboard players set @s BlockID 243 {SelectedItem:{id:"minecraft:light_gray_glazed_terracotta"}}
# 244 - cyan_glazed_terracotta
scoreboard players set @s BlockID 244 {SelectedItem:{id:"minecraft:cyan_glazed_terracotta"}}
# 245 - purple_glazed_terracotta
scoreboard players set @s BlockID 245 {SelectedItem:{id:"minecraft:purple_glazed_terracotta"}}
# 246 - blue_glazed_terracotta
scoreboard players set @s BlockID 246 {SelectedItem:{id:"minecraft:blue_glazed_terracotta"}}
# 247 - brown_glazed_terracotta
scoreboard players set @s BlockID 247 {SelectedItem:{id:"minecraft:brown_glazed_terracotta"}}
# 248 - green_glazed_terracotta
scoreboard players set @s BlockID 248 {SelectedItem:{id:"minecraft:green_glazed_terracotta"}}
# 249 - red_glazed_terracotta
scoreboard players set @s BlockID 249 {SelectedItem:{id:"minecraft:red_glazed_terracotta"}}
# 250 - black_glazed_terracotta
scoreboard players set @s BlockID 250 {SelectedItem:{id:"minecraft:black_glazed_terracotta"}}
# 251 - concrete
scoreboard players set @s BlockID 251 {SelectedItem:{id:"minecraft:concrete"}}
# 252 - concrete_powder
scoreboard players set @s BlockID 252 {SelectedItem:{id:"minecraft:concrete_powder"}}
# 253 - none
scoreboard players set @s BlockID 253 {SelectedItem:{id:"minecraft:none"}}
# 254 - none
scoreboard players set @s BlockID 254 {SelectedItem:{id:"minecraft:none"}}
# 255 - structure_block
scoreboard players set @s BlockID 255 {SelectedItem:{id:"minecraft:structure_block"}}