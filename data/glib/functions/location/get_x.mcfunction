#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:location/get_x
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function glib_utils:default_entity

execute store result score @s glib.locX run data get entity @e[tag=glib.new,limit=1,sort=nearest] Pos[0] 1

execute as @e[tag=glib.new] run function glib:health/safe_kill
