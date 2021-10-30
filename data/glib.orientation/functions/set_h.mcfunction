#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib.orientation:set_h
# Parallelizable: true
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.oriH dummy [{"text":"GLib ","color":"gold"},{"text":"Orientation H","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute at @s run function glib.core:default_entity

execute store result entity @e[tag=glib.new,limit=1] Rotation[0] float 1 run scoreboard players get @s glib.oriH
