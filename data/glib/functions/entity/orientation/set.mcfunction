#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/orientation/set
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#orientation
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["Glib","SetRotation"]}
execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[0] float 1 run scoreboard players get @s Var1
execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[1] float 1 run scoreboard players get @s Var2
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
