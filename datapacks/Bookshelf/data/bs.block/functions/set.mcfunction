scoreboard objectives add bs.block.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Block ID","color":"aqua"}]

execute if score @s bs.block.id matches 0..7148 run function bs.block:set/nodes/0-7148
execute if score @s bs.block.id matches 7149..14297 run function bs.block:set/nodes/7149-14297
execute if score @s bs.block.id matches 14298..21447 run function bs.block:set/nodes/14298-21447
