# NAME: FIFO List - getSize
# PATH: glib:collection/lists/fifo_list/get_size

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# Output:
# - Var1 (dummy)

# NOTE: Get the size of the FIFO list if the FIFO list exit, do not change the score otherwise.

# CODE:

execute store result score @s Var1 run data get entity @s ArmorItems[2].tag.fifo