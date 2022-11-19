#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check: 1.16.1

# Original path: bs.link:create_link_ata
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rx dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position X","color":"dark_gray"}]
scoreboard objectives add bs.link.ry dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Y","color":"dark_gray"}]
scoreboard objectives add bs.link.rz dummy [{"text":"GLib ","color":"gold"},{"text":"Relative position Z","color":"dark_gray"}]

scoreboard objectives add bs.link.lx dummy [{"text":"GLib ","color":"gold"},{"text":"Local position X","color":"dark_gray"}]
scoreboard objectives add bs.link.ly dummy [{"text":"GLib ","color":"gold"},{"text":"Local position Y","color":"dark_gray"}]
scoreboard objectives add bs.link.lz dummy [{"text":"GLib ","color":"gold"},{"text":"Local position Z","color":"dark_gray"}]

scoreboard objectives add bs.link.rv dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation V","color":"dark_gray"}]
scoreboard objectives add bs.link.rh dummy [{"text":"GLib ","color":"gold"},{"text":"Relative orientation H","color":"dark_gray"}]

scoreboard objectives add bs.link.to dummy [{"text":"GLib ","color":"gold"},{"text":"Linked to","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.link.to = @e[limit=1,sort=nearest] bs.id
function bs.link:update_link
