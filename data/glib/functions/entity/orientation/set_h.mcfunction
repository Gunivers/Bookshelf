#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/orientation/set_h
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#orientation
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["Glib","SetRotation"]}

tp @e[type=armor_stand,tag=SetRotaton,limit=1] @s

execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[0] float 1 run scoreboard players get @s glib.var
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
