# NAME: Get Health
# PATH: gunivers-lib:entity/gethealth

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13

# OUTPUT:
# - Health (score dummy)

# NOTE: Allow to get the health of an entity (2 = 1 heart).

# CODE:

execute store result score @s Health run data get entity @s Health 1