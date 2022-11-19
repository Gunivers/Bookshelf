scoreboard objectives add bs.blockId dummy [{"text":"GLib ","color":"gold"},{"text":"Block ID","color":"dark_gray"}]

scoreboard players set @s bs.blockId 0
execute unless predicate bs.block:get/group_0 run scoreboard players add @s bs.blockId 1
execute unless predicate bs.block:get/group_1 run scoreboard players add @s bs.blockId 2
execute unless predicate bs.block:get/group_2 run scoreboard players add @s bs.blockId 4
execute unless predicate bs.block:get/group_3 run scoreboard players add @s bs.blockId 8
execute unless predicate bs.block:get/group_4 run scoreboard players add @s bs.blockId 16
execute unless predicate bs.block:get/group_5 run scoreboard players add @s bs.blockId 32
execute unless predicate bs.block:get/group_6 run scoreboard players add @s bs.blockId 64
execute unless predicate bs.block:get/group_7 run scoreboard players add @s bs.blockId 128
execute unless predicate bs.block:get/group_8 run scoreboard players add @s bs.blockId 256
execute unless predicate bs.block:get/group_9 run scoreboard players add @s bs.blockId 512
execute unless predicate bs.block:get/group_10 run scoreboard players add @s bs.blockId 1024
execute unless predicate bs.block:get/group_11 run scoreboard players add @s bs.blockId 2048
execute unless predicate bs.block:get/group_12 run scoreboard players add @s bs.blockId 4096
execute unless predicate bs.block:get/group_13 run scoreboard players add @s bs.blockId 8192
execute unless predicate bs.block:get/group_14 run scoreboard players add @s bs.blockId 16384
