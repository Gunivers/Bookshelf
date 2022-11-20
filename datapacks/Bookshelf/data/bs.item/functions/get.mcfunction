scoreboard objectives add bs.itemId dummy [{"text":"Bookshelf ","color":"gold"},{"text":"Item ID","color":"dark_gray"}]

scoreboard players set @s bs.itemId 0
execute unless predicate bs.item:get/group_0 run scoreboard players add @s bs.itemId 1
execute unless predicate bs.item:get/group_1 run scoreboard players add @s bs.itemId 2
execute unless predicate bs.item:get/group_2 run scoreboard players add @s bs.itemId 4
execute unless predicate bs.item:get/group_3 run scoreboard players add @s bs.itemId 8
execute unless predicate bs.item:get/group_4 run scoreboard players add @s bs.itemId 16
execute unless predicate bs.item:get/group_5 run scoreboard players add @s bs.itemId 32
execute unless predicate bs.item:get/group_6 run scoreboard players add @s bs.itemId 64
execute unless predicate bs.item:get/group_7 run scoreboard players add @s bs.itemId 128
execute unless predicate bs.item:get/group_8 run scoreboard players add @s bs.itemId 256
execute unless predicate bs.item:get/group_9 run scoreboard players add @s bs.itemId 512
execute unless predicate bs.item:get/group_10 run scoreboard players add @s bs.itemId 1024
