scoreboard objectives add bs.itemId dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Item ID","color":"aqua"}]

execute if score @s bs.itemId matches 0..383 run function bs.item:set/nodes/0-383
execute if score @s bs.itemId matches 384..767 run function bs.item:set/nodes/384-767
execute if score @s bs.itemId matches 768..1151 run function bs.item:set/nodes/768-1151
