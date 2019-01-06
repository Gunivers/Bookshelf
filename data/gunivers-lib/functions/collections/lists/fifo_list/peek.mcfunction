# NAME: FIFO List - Peek
# PATH: gunivers-lib:collections/lists/fifo_list/peek

# AUTHOR: theogiraudet

# VERSION: 1.0
# MINECRAFT: 1.14

# REQUIEREMENTS:
# - Vars (module)

# Output:
# - Var1 (dummy)

# NOTE: Get the first value inserted in the list. This value isn't deleted after being returned.

# CODE:

function gunivers-lib:collections/lists/fifo_list/has_storage_medium
execute store result score @s[scores={Var2=1}] Var1 run data get entity @s ArmorItems[2].tag.fifo[0]