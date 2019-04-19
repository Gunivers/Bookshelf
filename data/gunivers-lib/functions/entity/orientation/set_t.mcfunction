# NAME: Set Rotation
# PATH: gunivers-Lib:entity/rotation/advanced/set

# AUTHOR: theogiraudet

# VERSION: 2.0
# MINECRAFT: 1.13

# INPUT:
# - Var1 (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT:
scoreboard objectives add Var1 dummy

# CODE:
#____________________________________________________________________________________________________

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["SetRotation"]}

tp @e[type=armor_stand,tag=SetRotaton,limit=1] @s

execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[0] float 1 run scoreboard players get @s Var1
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
