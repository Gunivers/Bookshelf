#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:link/imitate_ori_v
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity glib.id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rv dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation V","color":"dark_gray"}]
scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.targetId = @s glib.link.to
function glib:id/check

#   Relative Orientation
execute at @e[tag=glib.id.match,limit=1,sort=nearest] run function glib:orientation/get_v/accuracy/10-3
scoreboard players operation @s glib.oriV += @s glib.link.rv

function glib:orientation/set_v/accuracy/10-3
