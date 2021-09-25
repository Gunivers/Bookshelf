#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet & leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.17

# Original path: glib:orientation/add
# Documentation: https://glib-core.readthedocs.io//entity#orientation
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT



#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib_utils:default_entity
tag @e[tag=glib.new,limit=1] add orientation
tag @e[tag=orientation,limit=1] remove glib.new

execute as @e[tag=orientation,limit=1] at @s run function glib:orientation/get
scoreboard players operation @s glib.var0 += @e[tag=orientation,limit=1] glib.oriH

execute store result entity @e[tag=orientation,limit=1] Rotation[0] float 1 run scoreboard players get @s glib.var0
tp @s @e[tag=orientation,limit=1]
kill @e[tag=orientation]
