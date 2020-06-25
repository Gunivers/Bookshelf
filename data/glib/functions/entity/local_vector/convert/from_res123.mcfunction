#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check:

# Original path: glib:entity/local_vector/edit/from_res123
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#local-vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: glib.res0 (score dummy)
# Input: glib.res2 (score dummy)
# Input: glib.res3 (score dummy)

# Output: VectorX (score dummy)
# Output: VectorY (score dummy)
# Output: VectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.res0 dummy
scoreboard objectives add glib.res2 dummy
scoreboard objectives add glib.res3 dummy

scoreboard objectives add VectorLeft dummy
scoreboard objectives add VectorUp dummy
scoreboard objectives add VectorFront dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s VectorLeft = @s glib.res0
scoreboard players operation @s VectorUp = @s glib.res2
scoreboard players operation @s VectorFront = @s glib.res3
