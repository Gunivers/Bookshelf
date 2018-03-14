# NAME: Get Location
# PATH: gunivers-lib:entity/location/get

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-Lib:utils/import/var
# - gunivers-Lib:utils/import/location

# OUTPUT:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# CODE:
execute store result score @s LocX run data get entity @s Pos[0] 1
execute store result score @s LocY run data get entity @s Pos[1] 1
execute store result score @s LocZ run data get entity @s Pos[2] 1