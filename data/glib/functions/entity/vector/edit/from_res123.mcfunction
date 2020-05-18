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

# Input: Res1 (score dummy)
# Input: Res2 (score dummy)
# Input: Res3 (score dummy)

# Output: VectorX (score dummy)
# Output: VectorY (score dummy)
# Output: VectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add Res1 dummy
scoreboard objectives add Res2 dummy
scoreboard objectives add Res3 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s VectorX = @s Res1
scoreboard players operation @s VectorY = @s Res2
scoreboard players operation @s VectorZ = @s Res3
