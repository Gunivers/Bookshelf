# NAME: Get Rotation
# PATH: gunivers-lib:entity/rotation/get

# AUTHOR: theogiraudet

# VERSION: 2.0
# MINECRAFT: 1.13

# OUTPUT:
# - OriP (score dummy)
# - OriT (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT:
scoreboard objectives add OriT dummy
scoreboard objectives add OriP dummy

# CODE:
#____________________________________________________________________________________________________

execute store result score @s OriP run data get entity @s Rotation[0] 1
execute store result score @s OriT run data get entity @s Rotation[1] 1
