#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check:

# Original path: glib:entity/vector/edit/from_res123
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Note:

#__________________________________________________
# PARAMETERS

# Input: glib.res (score dummy)
# Input: glib.res2 (score dummy)
# Input: glib.res3 (score dummy)

# Output: VectorX (score dummy)
# Output: VectorY (score dummy)
# Output: VectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.res dummy
scoreboard objectives add glib.res2 dummy
scoreboard objectives add glib.res3 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s VectorX = @s glib.res
scoreboard players operation @s VectorY = @s glib.res2
scoreboard players operation @s VectorZ = @s glib.res3
