# NAME: Set Rotation
# PATH: Gunivers-Lib:entity/rotation/set

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Gunivers-Lib:utils/import/Var
# - Gunivers-Lib:utils/import/Location

# INPUT:
# - Var1 (score dummy)
# - Var2 (score dummy)

# OUTPUT:

# NOTE:
#It was excessively more impressive in 1.12 ...

# CODE:
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["SetRotation"]}
execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[0] double 1 run scoreboard players get @s Var1
execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[1] double 1 run scoreboard players get @s Var2
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
