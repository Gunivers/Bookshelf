scoreboard objectives add bs.item.id dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Item ID","color":"aqua"}]

scoreboard players set @s bs.item.id 0
execute unless predicate bs.item:get/group_0 run scoreboard players add @s bs.item.id 1
execute unless predicate bs.item:get/group_1 run scoreboard players add @s bs.item.id 2
execute unless predicate bs.item:get/group_2 run scoreboard players add @s bs.item.id 4
execute unless predicate bs.item:get/group_3 run scoreboard players add @s bs.item.id 8
execute unless predicate bs.item:get/group_4 run scoreboard players add @s bs.item.id 16
execute unless predicate bs.item:get/group_5 run scoreboard players add @s bs.item.id 32
execute unless predicate bs.item:get/group_6 run scoreboard players add @s bs.item.id 64
execute unless predicate bs.item:get/group_7 run scoreboard players add @s bs.item.id 128
execute unless predicate bs.item:get/group_8 run scoreboard players add @s bs.item.id 256
execute unless predicate bs.item:get/group_9 run scoreboard players add @s bs.item.id 512
execute unless predicate bs.item:get/group_10 run scoreboard players add @s bs.item.id 1024
