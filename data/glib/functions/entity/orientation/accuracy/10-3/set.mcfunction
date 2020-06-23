#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/orientation/accuracy/10-3/set
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#orientation
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["Glib","SetRotation"]}
execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[0] float 0.001 run scoreboard players get @s glib.var
execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[1] float 0.001 run scoreboard players get @s glib.var2
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
