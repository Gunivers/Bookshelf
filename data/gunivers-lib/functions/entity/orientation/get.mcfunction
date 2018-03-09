# NAME: Get Rotation
# PATH: gunivers-lib:entity/rotation/get

# AUTHOR: theogiraudet

# VERSION: 2.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Gunivers-Lib:utils/import/var
# - Gunivers-Lib:utils/import/rotation

# OUTPUT:
# - Phi (score dummy)
# - Theta (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# CODE:
execute store result score @s Phi run data get entity @s Rotation[0] 1
execute store result score @s Theta run data get entity @s Rotation[1] 1