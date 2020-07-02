#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib_accuracy:10-3/location/get
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.res0 run data get entity @s Pos[0] 1000
execute store result score @s glib.res1 run data get entity @s Pos[1] 1000
execute store result score @s glib.res2 run data get entity @s Pos[2] 1000
