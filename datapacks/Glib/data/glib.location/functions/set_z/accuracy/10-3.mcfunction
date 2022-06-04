#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib.location:set_z/accuracy/10-3
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.locZ dummy [{"text":"GLib ","color":"gold"},{"text":"Location Z","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e[tag=glib.setLocation] remove glib.setLocation
tag @s add glib.setLocation

# Player
execute if entity @s[type=minecraft:player] run function glib.core:default_entity
execute if entity @s[type=minecraft:player] as @e[tag=glib.new,limit=1] run function glib.location:set_z/accuracy/10-3/player

# Non-player
execute if entity @s[type=!minecraft:player] store result entity @s Pos[2] double 0.001 run scoreboard players add @s glib.locZ 0

tag @s remove glib.setLocation
