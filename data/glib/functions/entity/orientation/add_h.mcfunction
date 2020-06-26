#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet & leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: glib:entity/orientation/add
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#orientation
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["Glib","SetRotation"]}
tp @e[tag=Glib,tag=SetRotation,limit=1,sort=nearest] @s
execute as @e[tag=Glib,tag=SetRotation,limit=1,sort=nearest] at @s run function glib:entity/orientation/get
scoreboard players operation @s glib.var0 += @e[tag=Glib,tag=SetRotation,limit=1,sort=nearest] glib.ori.h


execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[0] float 1 run scoreboard players get @s glib.var0
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
