# NAME: FIFO List - Pop
# PATH: glib:collection/lists/fifo_list/pop

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# Output:
# - glib.var (dummy)

# NOTE: Get the first value inserted in the list. This value is deleted after being returned.

# CODE:

function glib:collection/lists/fifo_list/peek
data remove entity @s[scores={glib.var2=1}] ArmorItems[2].tag.fifo[0]