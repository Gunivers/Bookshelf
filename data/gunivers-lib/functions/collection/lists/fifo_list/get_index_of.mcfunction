# NAME: FIFO List - getIndexOf
# PATH: gunivers-lib:collection/lists/fifo_list/get_index_of

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# INPUT:
# - Var1 (dummy)

# OUTPUT:
# - Res (dummy)

# NOTE: Return the index of the first occurrence of the value.

# CODE:

function gunivers-lib:collection/lists/fifo_list/fifo_list_to_buffer
scoreboard players set @s Res 0
scoreboard players set @s Var4 0
scoreboard players operation @s Var5 = @s Var1
function gunivers-lib:collection/lists/fifo_list/child/get_index_of_rec
function gunivers-lib:collection/lists/fifo_list/buffer_to_fifo_list
data remove entity @s ArmorItems[2].tag.buffer
execute if entity @s[scores={Var4=0}] run scoreboard players set @s Res -1