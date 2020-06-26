# NAME: FIFO List - Push
# PATH: glib:collection/lists/fifo_list/push

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# INPUT:
# - glib.var0 (dummy)

# NOTE: Add a value to the list. Override the buffer.

# CODE:

function glib:collection/lists/fifo_list/has_storage_medium
execute store result entity @s[scores={glib.var1=1}] ArmorItems[2].tag.buffer int 1 run scoreboard players get @s glib.var0
data modify entity @s[scores={glib.var1=1}] ArmorItems[2].tag.fifo append from entity @s ArmorItems[2].tag.buffer
data remove entity @s ArmorItems[2].tag.buffer