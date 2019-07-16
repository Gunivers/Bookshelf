# NAME: Set Rotation
# PATH: gunivers-Lib:entity/rotation/advanced/set

# AUTHOR: theogiraudet

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-Lib:utils/import/var
# - gunivers-Lib:utils/import/rotation

# INPUT:
# - Var1 (score dummy)
# - Var2 (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# CODE:
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["SetRotation"]}
execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[0] float 0.001 run scoreboard players get @s Var1
execute store result entity @e[type=armor_stand,tag=SetRotation,limit=1] Rotation[1] float 0.001 run scoreboard players get @s Var2
tp @s @e[type=armor_stand,tag=SetRotation,limit=1]
kill @e[type=armor_stand,tag=SetRotation,limit=1]
