# NAME: FIFO List - Push
# PATH: gunivers-lib:collection/lists/fifo_list/push

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# INPUT:
# - Var1 (dummy)

# NOTE: Add a value to the list. Override the buffer.

# CODE:

function gunivers-lib:collection/lists/fifo_list/has_storage_medium
execute store result entity @s[scores={Var2=1}] ArmorItems[2].tag.buffer int 1 run scoreboard players get @s Var1
data modify entity @s[scores={Var2=1}] ArmorItems[2].tag.fifo append from entity @s ArmorItems[2].tag.buffer
data remove entity @s ArmorItems[2].tag.buffer
function gunivers-lib:collection/lists/fifo_list/get_size
scoreboard players add @s[scores={Var2=1}] Var1 1
execute store result entity @s[scores={Var2=1}] ArmorItems[2].tag.fifo_size int 1 run scoreboard players get @s Var1