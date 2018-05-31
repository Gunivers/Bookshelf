# NAME: Id to Block
# PATH: gunivers-lib:functions/object/block/id_to_block/id_to_block

# AUTHOR: theogiraudet
# CONTRIBUTORS: (optional)
# - LeiRoF

# VERSION: 1.1
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Var1 (score dummy)

# INPUT:
# - Var1 (score dummy)

#NOTE: Allow to set block from an Id (see gunivers-lib/utils/lists/blocks.txt to see the correspondence between ids and blocks) at the position of the entity

# CODE:

execute if score @s Var1 matches ..512 run function gunivers-lib:object/block/id_to_block/nodes/0-512
execute if score @s Var1 matches 513.. run function gunivers-lib:object/block/id_to_block/nodes/513-1024