# NAME: FIFO List - fifoListToBuffer
# PATH: glib:collection/lists/fifo_list/fifo_list_to_buffer

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# NOTE: Copy the FIFO list onto the entity's buffer. Can be use to do some read or write operations.

# CODE:

function glib:collection/lists/fifo_list/has_storage_medium
data modify entity @s[scores={glib.var1=1}] ArmorItems[2].tag.buffer set from entity @s ArmorItems[2].tag.fifo