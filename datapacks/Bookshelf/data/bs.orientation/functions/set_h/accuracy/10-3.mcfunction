#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.orientation:set_h/accuracy/10-3
# Parallelizable: true
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.ori.h dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Orientation H","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute at @s run function bs.core:default_entity

execute store result entity @e[tag=bs.new,limit=1] Rotation[0] float 0.001 run scoreboard players get @s bs.ori.h
tp @s @e[tag=bs.new,limit=1]
