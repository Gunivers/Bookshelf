# NAME: Get Rotation
# PATH: gunivers-lib:entity/rotation/get

# AUTHOR: theogiraudet

# VERSION: 2.0
# MINECRAFT: 1.13

# OUTPUT:
# - OriH (score dummy)
# - OriV (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT:
scoreboard objectives add OriV dummy
scoreboard objectives add OriH dummy

# CODE:
#____________________________________________________________________________________________________

execute store result score @s OriH run data get entity @s Rotation[0] 1000
execute store result score @s OriV run data get entity @s Rotation[1] 1000
