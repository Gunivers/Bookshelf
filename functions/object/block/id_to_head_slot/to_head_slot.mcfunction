# NAME: Id to Head Slot
# PATH: gunivers-lib:functions/object/block/id_to_head_slot/to_head_slot

# AUTHOR: theogiraudet
# CONTRIBUTORS: (optional)
# - LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Var1 (score dummy)

# INPUT:
# - Var1 (score dummy)

# NOTE: Allow to set the item corresponding to the score in head slot

# CODE:

execute if score @s Var1 matches ..512 run function gunivers-lib:object/block/id_to_head_slot/nodes/0-512
execute if score @s Var1 matches 513.. run function gunivers-lib:object/block/id_to_head_slot/nodes/513-1024