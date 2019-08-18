# NAME: Is in Cave
# PATH: gunivers-lib:entity/location/is_in_cave

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# OUTPUT:
# - Res (score dummy)

# NOTE:
# Return 1 if the entity is in a cave, 0 else.
execute store result score @s Res if block ~ ~ ~ cave_air