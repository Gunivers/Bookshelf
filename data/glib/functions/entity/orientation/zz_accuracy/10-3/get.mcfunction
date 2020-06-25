#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/orientation/zzz_accuracy/10-3/get
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#orientation
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.ori.v dummy
scoreboard objectives add glib.ori.h dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.ori.h run data get entity @s Rotation[0] 1000
execute store result score @s glib.ori.v run data get entity @s Rotation[1] 1000
