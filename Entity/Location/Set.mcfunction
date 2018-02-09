# NAME: Set Location
# PATH: Gunivers-Lib:Entity/Location/Set

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Gunivers-Lib:utils/import/Var
# - Gunivers-Lib:utils/import/Location

# INPUT:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# OUTPUT:

# NOTE:
#It was excessively more impressive in 1.12 ...

# CODE:
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["SetLocation"]}
execute store result entity @e[type=armor_stand,tag={"SetLocation"},limit=1] Pos[0] double 0.1 run scoreboard players get @s Tmp1
execute store result entity @e[type=armor_stand,tag={"SetLocation"},limit=1] Pos[1] double 0.1 run scoreboard players get @s Tmp2
execute store result entity @e[type=armor_stand,tag={"SetLocation"},limit=1] Pos[2] double 0.1 run scoreboard players get @s Tmp3
tp @s @e[type=armor_stand,tag={"SetLocation"},limit=1]
kill @e[type=armor_stand,tag={"SetLocation"},limit=1]
