#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib_accuracy:10-3/entity/location/set
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @s add glib.location.tp
execute if entity @s[type=minecraft:player] run summon armor_stand ~ ~200 ~ {Invisible:1,NoGravity:1,Tags:["glib","glib.location.set"]}
execute if entity @s[type=minecraft:player] as @e[tag=glib.location.set,limit=1] run function glib_child/accuracy/10-3/entity/location/set_player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[0] double 0.001 run scoreboard players get @s glib.var0
execute if entity @s[type=!minecraft:player] store result entity @s Pos[1] double 0.001 run scoreboard players get @s glib.var1
execute if entity @s[type=!minecraft:player] store result entity @s Pos[2] double 0.001 run scoreboard players get @s glib.var2
tag @s remove glib.location.tp
