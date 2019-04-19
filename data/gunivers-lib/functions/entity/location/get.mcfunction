# NAME: Get Location
# PATH: gunivers-lib:entity/location/get

# AUTHOR: LeiRoF

# VERSION: 2.0
# MINECRAFT: 1.13

# OUTPUT:
# - LocX (score dummy)
# - LocY (score dummy)
# - LocZ (score dummy)

# NOTE:
#It was excessively more impressive in 1.12 ...

# INIT
scoreboard objectives add LocX dummy
scoreboard objectives add LocY dummy
scoreboard objectives add LocZ dummy

# CODE:
#____________________________________________________________________________________________________

execute store result score @s LocX run data get entity @s Pos[0] 1
execute store result score @s LocY run data get entity @s Pos[1] 1
execute store result score @s LocZ run data get entity @s Pos[2] 1
