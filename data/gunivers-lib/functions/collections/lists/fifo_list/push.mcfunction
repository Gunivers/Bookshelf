# NAME: FIFO List - Push
# PATH: gunivers-lib:collections/lists/fifo_list/push

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# INPUT:
# - Var1 (dummy)

# NOTE: Add a value to the list.

# CODE:

function gunivers-lib:collections/lists/fifo_list/has_storage_medium
execute store result entity @s[scores={Var2=1}] ArmorItems[2].tag.buffer int 1 run scoreboard players get @s Var1
data modify entity @s[scores={Var2=1}] ArmorItems[2].tag.fifo append from entity @s ArmorItems[2].tag.buffer