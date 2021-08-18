scoreboard objectives add glib.itemId dummy
scoreboard players set @s glib.itemId 0
execute unless predicate glib:block/get_as_item/group_0 run scoreboard players add @s glib.itemId 1
execute unless predicate glib:block/get_as_item/group_1 run scoreboard players add @s glib.itemId 2
execute unless predicate glib:block/get_as_item/group_2 run scoreboard players add @s glib.itemId 4
execute unless predicate glib:block/get_as_item/group_3 run scoreboard players add @s glib.itemId 8
execute unless predicate glib:block/get_as_item/group_4 run scoreboard players add @s glib.itemId 16
execute unless predicate glib:block/get_as_item/group_5 run scoreboard players add @s glib.itemId 32
execute unless predicate glib:block/get_as_item/group_6 run scoreboard players add @s glib.itemId 64
execute unless predicate glib:block/get_as_item/group_7 run scoreboard players add @s glib.itemId 128
execute unless predicate glib:block/get_as_item/group_8 run scoreboard players add @s glib.itemId 256
execute unless predicate glib:block/get_as_item/group_9 run scoreboard players add @s glib.itemId 512
