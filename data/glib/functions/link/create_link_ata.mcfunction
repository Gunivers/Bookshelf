#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check: 1.16.1

# Original path: glib:link/create_link_ata
# Parallelizable: true
# Note: @s must have glib.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.link.rx dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position X","color":"dark_gray"}]
scoreboard objectives add glib.link.ry dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Y","color":"dark_gray"}]
scoreboard objectives add glib.link.rz dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Z","color":"dark_gray"}]

scoreboard objectives add glib.link.lx dummy [{"text":"GLib ","color":"gold"},{"text":"Local position X","color":"dark_gray"}]
scoreboard objectives add glib.link.ly dummy [{"text":"GLib ","color":"gold"},{"text":"Local position Y","color":"dark_gray"}]
scoreboard objectives add glib.link.lz dummy [{"text":"GLib ","color":"gold"},{"text":"Local position Z","color":"dark_gray"}]

scoreboard objectives add glib.link.rv dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation V","color":"dark_gray"}]
scoreboard objectives add glib.link.rh dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation H","color":"dark_gray"}]

scoreboard objectives add glib.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

tag @e remove glib.link.target
tag @e[limit=1,sort=nearest] add glib.link.target
scoreboard players operation @s glib.link.to = @e[limit=1,sort=nearest] glib.id
tag @s add glib.linked

function glib:link/update_link
