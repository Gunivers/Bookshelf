#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet & leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.15.2

# Original path: bs.orientation:add
# Documentation: https://bs-core.readthedocs.io//entity#orientation
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT



#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["bs","SetRotation"]}
data modify entity @e[tag=bs,tag=SetRotation,limit=1,sort=nearest] Rotation set from entity @s Rotation
execute as @e[tag=bs,tag=SetRotation,limit=1,sort=nearest] at @s run function bs.orientation:get
scoreboard players operation @s bs.in.0 += @e[tag=bs,tag=SetRotation,limit=1,sort=nearest] bs.ori.v


execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[1] float 1 run scoreboard players get @s bs.in.0
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
