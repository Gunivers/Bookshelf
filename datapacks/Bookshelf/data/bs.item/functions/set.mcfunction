scoreboard objectives add bs.itemId dummy [{"text":"GLib ","color":"gold"},{"text":"Item ID","color":"dark_gray"}]

execute if score @s bs.itemId matches 0..383 run function bs.item:set/nodes/0-383
execute if score @s bs.itemId matches 384..767 run function bs.item:set/nodes/384-767
execute if score @s bs.itemId matches 768..1151 run function bs.item:set/nodes/768-1151
