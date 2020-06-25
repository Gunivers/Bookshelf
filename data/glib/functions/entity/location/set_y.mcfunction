#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/set_y
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

scoreboard objectives add glib.var0 dummy

#__________________________________________________
# CODE

tag @s add SetLocation
execute if entity @s[type=minecraft:player] run summon armor_stand ~ ~200 ~ {Invisible:1,NoGravity:1,Tags:["Glib","SetLocation"]}
execute if entity @s[type=minecraft:player] as @e[tag=SetLocation,limit=1] run function glib:entity/location/child/set_y_player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[1] double 1 run scoreboard players add @s glib.var0 0
tag @s remove SetLocation
