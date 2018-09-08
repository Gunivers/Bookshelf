# NAME: Set Location
# PATH: gunivers-lib:entity/location/set

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-lib:utils/import/var
# - gunivers-lib:utils/import/location

# INPUT:
# - Var1 (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# CODE:
#____________________________________________________________________________________________________

summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["SetLocation"]}

tp @e[type=armor_stand,tag=SetLocation,limit=1] @s

execute store result entity @e[type=armor_stand,tag=SetLocation,limit=1] Pos[2] double 0.001 run scoreboard players get @s Var1
tp @s @e[type=armor_stand,tag=SetLocation,limit=1]
kill @e[type=armor_stand,tag=SetLocation,limit=1]
