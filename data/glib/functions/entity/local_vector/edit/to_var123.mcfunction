#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check:

# Original path: glib:entity/local_vector/edit/from_res123
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#local-vector
# Note:

#__________________________________________________
# PARAMETERS

# Input: VectorX (score dummy)
# Input: VectorY (score dummy)
# Input: VectorZ (score dummy)

# Output: Var1 (score dummy)
# Output: Var2 (score dummy)
# Output: Var3 (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add VectorLeft dummy
scoreboard objectives add VectorUp dummy
scoreboard objectives add VectorFront dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s Var1 = @s VectorLeft
scoreboard players operation @s Var2 = @s VectorUp
scoreboard players operation @s Var3 = @s VectorFront
