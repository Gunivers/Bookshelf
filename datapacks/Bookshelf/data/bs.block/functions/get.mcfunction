scoreboard objectives add bs.block.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Block ID","color":"aqua"}]

scoreboard players set @s bs.block.id 0
execute unless predicate bs.block:get/group_0 run scoreboard players add @s bs.block.id 1
execute unless predicate bs.block:get/group_1 run scoreboard players add @s bs.block.id 2
execute unless predicate bs.block:get/group_2 run scoreboard players add @s bs.block.id 4
execute unless predicate bs.block:get/group_3 run scoreboard players add @s bs.block.id 8
execute unless predicate bs.block:get/group_4 run scoreboard players add @s bs.block.id 16
execute unless predicate bs.block:get/group_5 run scoreboard players add @s bs.block.id 32
execute unless predicate bs.block:get/group_6 run scoreboard players add @s bs.block.id 64
execute unless predicate bs.block:get/group_7 run scoreboard players add @s bs.block.id 128
execute unless predicate bs.block:get/group_8 run scoreboard players add @s bs.block.id 256
execute unless predicate bs.block:get/group_9 run scoreboard players add @s bs.block.id 512
execute unless predicate bs.block:get/group_10 run scoreboard players add @s bs.block.id 1024
execute unless predicate bs.block:get/group_11 run scoreboard players add @s bs.block.id 2048
execute unless predicate bs.block:get/group_12 run scoreboard players add @s bs.block.id 4096
execute unless predicate bs.block:get/group_13 run scoreboard players add @s bs.block.id 8192
execute unless predicate bs.block:get/group_14 run scoreboard players add @s bs.block.id 16384
