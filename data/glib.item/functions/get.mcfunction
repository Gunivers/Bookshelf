#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.17
# Last check: 1.17.1

# Original path: glib.item:get
# Documentation: https://glib-core.readthedocs.io/en/latest/Item.html#get-item-id

#__________________________________________________
# PARAMETERS

# Output: glib.itemId (score): Item unique ID

#__________________________________________________
# INIT

scoreboard objectives add glib.itemId dummy
scoreboard players set @s glib.itemId 0

#__________________________________________________
# CONFIG

#__________________________________________________
## CODE

execute unless predicate glib.item:get/group_0 run scoreboard players add @s glib.itemId 1
execute unless predicate glib.item:get/group_1 run scoreboard players add @s glib.itemId 2
execute unless predicate glib.item:get/group_2 run scoreboard players add @s glib.itemId 4
execute unless predicate glib.item:get/group_3 run scoreboard players add @s glib.itemId 8
execute unless predicate glib.item:get/group_4 run scoreboard players add @s glib.itemId 16
execute unless predicate glib.item:get/group_5 run scoreboard players add @s glib.itemId 32
execute unless predicate glib.item:get/group_6 run scoreboard players add @s glib.itemId 64
execute unless predicate glib.item:get/group_7 run scoreboard players add @s glib.itemId 128
execute unless predicate glib.item:get/group_8 run scoreboard players add @s glib.itemId 256
execute unless predicate glib.item:get/group_9 run scoreboard players add @s glib.itemId 512
execute unless predicate glib.item:get/group_10 run scoreboard players add @s glib.itemId 1024
