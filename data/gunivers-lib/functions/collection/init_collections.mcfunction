# NAME: FIFO List - Init Collection
# PATH: gunivers-lib:collection/init_collection

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# Output:
# - Var1 (dummy)

# NOTE: Clear the FIFO list.

# CODE: Create a new storage medium for Collections in the entity. Work only if the current entity can have an item in his armor.legs slot. If the entity already has an item different than slime_ball in this slot, it's overrided by a new slime_ball item.

execute unless entity @s[nbt={ArmorItems:[{},{},{id:"minecraft:slime_ball",Count:1b}]}] run data modify entity @s ArmorItems[2] set value {id:"minecraft:slime_ball",Count:1b,tag:{}}