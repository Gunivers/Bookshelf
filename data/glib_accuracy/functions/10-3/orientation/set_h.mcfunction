#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib_accuracy:10-3/orientation/set_h
# Parallelizable: true
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.oriH dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute at @s run function glib_config:default_entity

execute store result entity @e[tag=glib.new,limit=1] Rotation[0] float 0.001 run scoreboard players get @s glib.oriH
tp @s @e[tag=glib.new,limit=1]
