scoreboard objectives add bs.block.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Block ID","color":"aqua"}]
scoreboard objectives add bs.item.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Item ID","color":"aqua"}]

execute if score @s bs.block.id matches 0..7491 run function bs.block:convert_to_item/nodes/0-7491
execute if score @s bs.block.id matches 7492..14425 run function bs.block:convert_to_item/nodes/7492-14425
execute if score @s bs.block.id matches 14426..21447 run function bs.block:convert_to_item/nodes/14426-21447
