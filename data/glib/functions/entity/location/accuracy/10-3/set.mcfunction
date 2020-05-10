#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/set
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["Glib","SetLocation"]}

tp @e[type=armor_stand,tag=SetLocation,limit=1] @s

execute store result entity @e[type=armor_stand,tag=SetLocation,limit=1] Pos[0] double 0.001 run scoreboard players get @s Var1
execute store result entity @e[type=armor_stand,tag=SetLocation,limit=1] Pos[1] double 0.001 run scoreboard players get @s Var2
execute store result entity @e[type=armor_stand,tag=SetLocation,limit=1] Pos[2] double 0.001 run scoreboard players get @s Var3
tp @s @e[type=armor_stand,tag=SetLocation,limit=1]
kill @e[type=armor_stand,tag=SetLocation,limit=1]
