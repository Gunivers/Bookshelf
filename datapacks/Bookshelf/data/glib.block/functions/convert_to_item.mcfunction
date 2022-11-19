scoreboard objectives add bs.blockId dummy [{"text":"GLib ","color":"gold"},{"text":"Block ID","color":"dark_gray"}]
scoreboard objectives add bs.itemId dummy [{"text":"GLib ","color":"gold"},{"text":"Item ID","color":"dark_gray"}]

execute if score @s bs.blockId matches 0..7491 run function bs.block:convert_to_item/nodes/0-7491
execute if score @s bs.blockId matches 7492..14425 run function bs.block:convert_to_item/nodes/7492-14425
execute if score @s bs.blockId matches 14426..21447 run function bs.block:convert_to_item/nodes/14426-21447
