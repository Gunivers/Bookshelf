scoreboard objectives add glib.itemId dummy [{"text":"GLib ","color":"gold"},{"text":"Item ID","color":"dark_gray"}]

execute if score @s glib.itemId matches 0..383 run function glib.item:set/nodes/0-383
execute if score @s glib.itemId matches 384..767 run function glib.item:set/nodes/384-767
execute if score @s glib.itemId matches 768..1151 run function glib.item:set/nodes/768-1151
