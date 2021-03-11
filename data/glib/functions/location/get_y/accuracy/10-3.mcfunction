#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/get_y/accuracy/10-3
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.locY dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib_utils:default_entity

execute store result score @s glib.locY run data get entity @e[tag=glib.new,limit=1,sort=nearest] Pos[1] 1000
