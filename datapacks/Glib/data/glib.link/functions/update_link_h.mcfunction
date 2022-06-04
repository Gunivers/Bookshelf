#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib.link:update_link_h
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rh dummy [{"text":"GLib ","color":"gold"},{"text":"Link Relative H","color":"dark_gray"}]
scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Link To","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib.id:check

# Relative Orientation
execute at @s run function glib.orientation:get_h/accuracy/10-3
scoreboard players operation @s glib.link.rh = @s glib.oriH

execute at @e[tag=glib.id.match] run function glib.orientation:get_h/accuracy/10-3
scoreboard players operation @s glib.link.rh -= @s glib.oriH
