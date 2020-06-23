# NAME: FIFO List - getIndexOf
# PATH: glib:collection/lists/fifo_list/get_index_of

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# INPUT:
# - glib.var (dummy)

# OUTPUT:
# - glib.res (dummy)

# NOTE: Return the index of the first occurrence of the value.

# CODE:

function glib:collection/lists/fifo_list/fifo_list_to_buffer
scoreboard players set @s glib.res 0
scoreboard players set @s glib.var4 0
scoreboard players operation @s glib.var5 = @s glib.var
function glib:collection/lists/fifo_list/child/get_index_of_rec
function glib:collection/lists/fifo_list/buffer_to_fifo_list
data remove entity @s ArmorItems[2].tag.buffer
execute if entity @s[scores={glib.var4=0}] run scoreboard players set @s glib.res -1