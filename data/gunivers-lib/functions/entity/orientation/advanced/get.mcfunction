# NAME: Advanced Get Rotation
# PATH: gunivers-lib:entity/rotation/advanced/get

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - gunivers-Lib:utils/import/var
# - gunivers-Lib:utils/import/rotation

# OUTPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# NOTE:
#1000 in the scoreboard = 1

# CODE:
execute store result score @s Phi run data get entity @s Rotation[0] 1000
execute store result score @s Theta run data get entity @s Rotation[1] 1000