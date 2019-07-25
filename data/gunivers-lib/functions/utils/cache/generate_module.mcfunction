# NAME: Generate Module
# PATH: gunivers-lib:utils/cache/init_generate_module

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# CODE:
execute as @e[tag=GenerateCacheGlib] at @s run setblock ~1 ~ ~-1 minecraft:structure_block[mode=load]{posX:3,name:"gunivers-lib:utils/cache",rotation:"CLOCKWISE_180",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} replace
execute as @e[tag=GenerateCacheGlib] at @s run setblock ~1 ~1 ~-1 redstone_block
tag @s add Glib_Menu_Cache_Cancel