# NAME: FIFO List - New
# PATH: gunivers-lib:collections/lists/fifo_list/new_fifo_list

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# NOTE: Create a new empty FIFO list in the entity. Work only if the current entity can have an item in his armor.legs slot. If the entity already has an item different than slime_ball in this slot, it's overrided by a new slime_ball item. If this item is a slime_ball, this function add the list without remove any lists present.

# CODE:

function gunivers-lib:collections/init_collections
execute unless entity @s[nbt={ArmorItems:[{},{},{id:"minecraft:slime_ball",Count:1b,tag:{fifo:[]}}]}] run tag @s add canAdd
data modify entity @s[tag=canAdd] ArmorItems[2].tag.fifo set value []
tag @s remove canAdd