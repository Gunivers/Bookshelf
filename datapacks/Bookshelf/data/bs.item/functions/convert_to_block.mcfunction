scoreboard objectives add bs.itemId dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Item ID","color":"dark_gray"}]
scoreboard objectives add bs.blockId dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Block ID","color":"dark_gray"}]

execute if score @s bs.itemId matches 1..365 run function bs.item:convert_to_block/nodes/1-365
execute if score @s bs.itemId matches 366..785 run function bs.item:convert_to_block/nodes/366-785
execute if score @s bs.itemId matches 786..1147 run function bs.item:convert_to_block/nodes/786-1147