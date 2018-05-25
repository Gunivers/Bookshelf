# NAME: Id to Falling Block
# PATH: gunivers-lib:functions/object/block/id_to_falling_block/id_to_falling_block

# AUTHOR: theogiraudet
# CONTRIBUTORS: (optional)
# - LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIEREMENTS:
# - Var1 (score dummy)

# INPUT:
# - Var1 (score dummy)

# NOTE: Allow to summon a falling block from an Id (see gunivers-lib/utils/lists/blocks.txt to see the correspondence between ids and blocks) at the position of the entity

# CODE:

execute if score @s Var1 matches ..512 run function gunivers-lib:object/block/id_to_falling_block/nodes/0-512
execute if score @s Var1 matches 512.. run function gunivers-lib:object/block/id_to_falling_block/nodes/513-1024