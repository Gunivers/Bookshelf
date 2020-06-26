# NAME: FIFO List - getIndexOf
# PATH: glib:collection/lists/fifo_list/get_index_of

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# INPUT:
# - glib.var0 (dummy)

# OUTPUT:
# - glib.res0 (dummy)

# NOTE: Return the index of the first occurrence of the value.

# CODE:

function glib:collection/lists/fifo_list/fifo_list_to_buffer
scoreboard players set @s glib.res0 0
scoreboard players set @s glib.var3 0
scoreboard players operation @s glib.var4 = @s glib.var0
function glib_child:collection/lists/fifo_list/get_index_of_rec
function glib:collection/lists/fifo_list/buffer_to_fifo_list
data remove entity @s ArmorItems[2].tag.buffer
execute if entity @s[scores={glib.var3=0}] run scoreboard players set @s glib.res0 -1