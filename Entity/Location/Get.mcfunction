# NAME: Get Location
# PATH: Gunivers-Lib:Entity/Location/Get

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.12

# REQUIREMENTS:
# - Gunivers-Lib:utils/import/basic

# INPUT:

# OUTPUT:
# - Output1   <- Location X
# - Output2   <- Location Y
# - Output3   <- Location Z

# NOTE:
It was excessively more impressive in 1.12 ...

# CODE:
execute store result score @s Output1 run data get entity @s Pos[0] 1
execute store result score @s Output2 run data get entity @s Pos[1] 1
execute store result score @s Output3 run data get entity @s Pos[1] 1