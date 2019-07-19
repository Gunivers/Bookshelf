# NAME: FIFO List - Delete
# PATH: gunivers-lib:collection/lists/fifo_list/delete_fifo_list

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# NOTE: Delete the stored FIFO list in the entity.

# CODE:

data remove entity @e[tag=test,limit=1] ArmorItems[2].tag.fifo
data remove entity @e[tag=test,limit=1] ArmorItems[2].tag.fifo_size