#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/location/accuracy/10-3/get_z
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add LocZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s LocZ run data get entity @s Pos[2] 1000
