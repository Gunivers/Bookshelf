# NAME: Get Location
# PATH: gunivers-lib:entity/location/get

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# OUTPUT:
# - LocY (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT
scoreboard objectives add LocY dummy

# CODE:
#____________________________________________________________________________________________________

execute store result score @s LocY run data get entity @s Pos[1] 1000
