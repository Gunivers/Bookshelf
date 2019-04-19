# NAME: Advanced Get Health
# PATH: gunivers-lib:entity/advanced/gethealth

# AUTHOR: theogiraudet

# VERSION: 0.1
# MINECRAFT: 1.13

# OUTPUT:
# - Health (score dummy)

# NOTE: Allow to get the health of an entity (2000 = 1 heart).

# INIT
scoreboard objectives add Health health
scoreboard objectives add Output1 dummy

# CODE:
#____________________________________________________________________________________________________


execute store result score @s Output1 run data get entity @s Health 1000