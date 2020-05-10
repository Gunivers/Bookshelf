# NAME: Generate Ghost Module
# PATH: glib:core/cache/generate_module_ghost

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# CODE:
execute unless entity @s[tag=GenerateCacheExecutor] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["GenerateCacheGlib"],NoGravity:1b}
tag @s[tag=!GenerateCacheExecutor] add GenerateCacheExecutor
execute at @s anchored eyes run tp @e[tag=GenerateCacheGlib] ^ ^ ^7

execute at @e[tag=GenerateCacheGlib] positioned ~3 ~ ~ align xyz run particle minecraft:flame ~ ~ ~ 0.9 0 0 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~1 ~2 ~ align xyz run particle minecraft:flame ~ ~ ~ 0 0.9 0 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~5 ~2 ~ align xyz run particle minecraft:flame ~ ~ ~ 0 0.9 0 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~5 ~2 ~-5 align xyz run particle minecraft:flame ~ ~ ~ 0 0.9 0 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~1 ~2 ~-5 align xyz run particle minecraft:flame ~ ~ ~ 0 0.9 0 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~3 ~4 ~ align xyz run particle minecraft:flame ~ ~ ~ 0.9 0 0 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~3 ~4 ~-5 align xyz run particle minecraft:flame ~ ~ ~ 0.9 0 0 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~1 ~4 ~-3 align xy run particle minecraft:flame ~ ~ ~ 0 0 1.2 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~5 ~4 ~-3 align xy run particle minecraft:flame ~ ~ ~ 0 0 1.2 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~5 ~ ~-3 align xy run particle minecraft:flame ~ ~ ~ 0 0 1.2 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~1 ~ ~-3 align xy run particle minecraft:flame ~ ~ ~ 0 0 1.2 0 5 force @a
execute at @e[tag=GenerateCacheGlib] positioned ~3 ~ ~-5 align xyz run particle minecraft:flame ~ ~ ~ 0.9 0 0 0 5 force @a

tellraw @s ["",{"text":"----------","color":"black"},{"text":"\n\n"},{"text":"     ","color":"gold"},{"text":"Are you sure?","bold":true,"underlined":true,"color":"gold"},{"text":"\n\n     "},{"text":"Define cache position here","color":"gold"},{"text":"\n\n     "},{"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add Glib_Menu_Cache_Cancel"},"hoverEvent":{"action":"show_text","value":"Uh... nope"}},{"text":"     "},{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/function glib:core/utils/cache/generate_module"},"hoverEvent":{"action":"show_text","value":"Yes, define cache position here"}},{"text":"\n"},{"text":"----------","color":"black"}]

execute if entity @s[tag=Glib_Menu_Cache_Cancel] run kill @e[tag=GenerateCacheGlib]
execute if entity @s[tag=Glib_Menu_Cache_Cancel] run tag @s remove GenerateCacheExecutor
execute if entity @s[tag=Glib_Menu_Cache_Cancel] run tag @s remove Glib_Menu_Cache_Ghost
execute if entity @s[tag=Glib_Menu_Cache_Cancel] run tag @s remove Glib_Menu_Cache_Cancel