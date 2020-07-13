#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:location/set_x
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

tag @e[tag=glib.setLocation] remove glib.setLocation
tag @s add glib.setLocation

# Player
execute if entity @s[type=minecraft:player] run function glib_config:default_entity
execute if entity @s[type=minecraft:player] as @e[tag=glib.new,limit=1] run function glib_child:accuracy/10-3/location/set_x/player

# Non-player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[0] double 0.001 run scoreboard players add @s glib.locX 0

tag @s remove glib.setLocation
