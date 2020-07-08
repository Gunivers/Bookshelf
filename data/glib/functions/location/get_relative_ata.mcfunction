#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/get_relative_ata
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]
scoreboard objectives add glib.locY dummy [{"text":"GLib ","color":"gold"},{"text":"Location Y","color":"dark_gray"}]
scoreboard objectives add glib.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute at @s run function glib:location/get

function glib_config:default_entity
execute as @e[tag=glib.new] run function glib:location/get

scoreboard players operation @s glib.locX -= @e[tag=glib.new,limit=1,sort=nearest] glib.locX
scoreboard players operation @s glib.locY -= @e[tag=glib.new,limit=1,sort=nearest] glib.locY
scoreboard players operation @s glib.locZ -= @e[tag=glib.new,limit=1,sort=nearest] glib.locZ

execute as @e[tag=glib.new] run function glib:health/safe_kill
