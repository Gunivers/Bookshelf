#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.orientation:get_v
# Parallelizable: true
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.oriV dummy [{"text":"GLib ","color":"gold"},{"text":"Orientation V","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
function bs.core:default_entity

execute store result score @s bs.oriV run data get entity @e[tag=bs.new,limit=1,sort=nearest] Rotation[1] 1
