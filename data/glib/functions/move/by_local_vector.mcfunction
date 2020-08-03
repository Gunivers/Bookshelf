#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:move/by_local_vector
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.collision dummy [{"text":"GLib ","color":"gold"},{"text":"Collision Type","color":"dark_gray"}]

scoreboard objectives add glib.vectorLeft dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Left","color":"dark_gray"}]
scoreboard objectives add glib.vectorUp dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Up","color":"dark_gray"}]
scoreboard objectives add glib.vectorFront dummy [{"text":"GLib ","color":"gold"},{"text":"Vector Front","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation move.vectorX glib = @s glib.vectorLeft
scoreboard players operation move.vectorY glib = @s glib.vectorUp
scoreboard players operation move.vectorZ glib = @s glib.vectorFront


# Decomposition in sum of vector with parameters <= 1000
tag @s add glib.move.loop1
execute if score vectorLeft glib matches -1000..1000 if score vectorUp glib matches -1000..1000 if score vectorFront glib matches -1000..1000 run tag @s remove glib.move.loop1

scoreboard players set move.factor glib 1
execute if entity @s[tag=glib.move.loop1] run function glib_child:default/move/by_local_vector/loop1

# Apply movement
function glib_child:default/move/by_local_vector/loop2
