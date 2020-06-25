# NAME: FIFO List - isEmpty
# PATH: glib:collection/lists/fifo_list/is_empty

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# Output:
# - glib.var0 (dummy)

# NOTE: Return 0 if the FIFO list in the current entity is empty, 0 else.

# CODE:

function glib:collection/lists/fifo_list/has_storage_medium
execute store success score @s[scores={glib.var1=1}] glib.var0 run data remove entity @s ArmorItems[2].tag.fifo[0]