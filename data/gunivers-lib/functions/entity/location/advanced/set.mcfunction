# NAME: Advanced Set Location
# PATH: gunivers-lib:entity/location/advanced/set

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-lib:utils/import/var
# - gunivers-lib:utils/import/location

# INPUT:
# - Var1 (score dummy)
# - Var2 (score dummy)
# - Var3 (score dummy)

# NOTE:
#1000 in the scoreboard = 1 block

# CODE:
summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["SetLocation"]}
execute store result entity @e[type=armor_stand,tag=SetLocation,limit=1] Pos[0] double 1000 run scoreboard players get @s Var1
execute store result entity @e[type=armor_stand,tag=SetLocation,limit=1] Pos[1] double 1000 run scoreboard players get @s Var2
execute store result entity @e[type=armor_stand,tag=SetLocation,limit=1] Pos[2] double 1000 run scoreboard players get @s Var3
tp @s @e[type=armor_stand,tag=SetLocation,limit=1]
kill @e[type=armor_stand,tag=SetLocation,limit=1]
