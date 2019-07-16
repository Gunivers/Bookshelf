# NAME: Get Location
# PATH: gunivers-lib:entity/location/get

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# OUTPUT:
# - LocX (score dummy)

# INIT
scoreboard objectives add LocX dummy

# NOTE:
#It was excessively more impressive in 1.12 ...

# CODE:
#____________________________________________________________________________________________________

execute store result score @s LocX run data get entity @s Pos[0] 1000
