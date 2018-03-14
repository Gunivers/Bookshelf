# NAME: Advanced Get Location
# PATH: gunivers-lib:entity/location/advanced/get

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-Lib:utils/import/var
# - gunivers-Lib:utils/import/location

# OUTPUT:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# NOTE:
#1000 in the scoreboard = 1 block

# CODE:
execute store result score @s LocX run data get entity @s Pos[0] 1000
execute store result score @s LocY run data get entity @s Pos[1] 1000
execute store result score @s LocZ run data get entity @s Pos[2] 1000