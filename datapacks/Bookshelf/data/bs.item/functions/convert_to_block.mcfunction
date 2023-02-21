scoreboard objectives add bs.item.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Item ID","color":"aqua"}]
scoreboard objectives add bs.block.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Block ID","color":"aqua"}]

execute if score @s bs.item.id matches 1..365 run function bs.item:convert_to_block/nodes/1-365
execute if score @s bs.item.id matches 366..785 run function bs.item:convert_to_block/nodes/366-785
execute if score @s bs.item.id matches 786..1147 run function bs.item:convert_to_block/nodes/786-1147
