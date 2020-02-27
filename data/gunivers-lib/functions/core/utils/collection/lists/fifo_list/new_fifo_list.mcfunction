# NAME: FIFO List - New
# PATH: gunivers-lib:collection/lists/fifo_list/new_fifo_list

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# NOTE: Create a new empty FIFO list in the entity. If a FIFO list is already in the entity, do nothing.

# CODE:

execute unless entity @s[nbt={ArmorItems:[{},{},{id:"minecraft:slime_ball",Count:1b,tag:{fifo:[]}}]}] run tag @s add canAdd
data modify entity @s[tag=canAdd] ArmorItems[2].tag.fifo set value []
data modify entity @s[tag=canAdd] ArmorItems[2].tag.fifo_size set value 0
tag @s remove canAdd