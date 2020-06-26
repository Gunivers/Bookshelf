# NAME: FIFO List - Peek
# PATH: glib:collection/lists/fifo_list/peek

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# Output:
# - glib.var0 (dummy)

# NOTE: Get the first value inserted in the list. This value isn't deleted after being returned.

# CODE:

function glib:collection/lists/fifo_list/has_storage_medium
execute store result score @s[scores={glib.var1=1}] glib.var0 run data get entity @s ArmorItems[2].tag.fifo[0]