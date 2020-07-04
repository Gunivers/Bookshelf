#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.15
# Last check:

# Original path: glib:vector/classic/edit/from_res123
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: glib.res0 (score dummy)
# Input: glib.res2 (score dummy)
# Input: glib.res3 (score dummy)

# Output: glib.vectorX (score dummy)
# Output: glib.vectorY (score dummy)
# Output: glib.vectorZ (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.vectorX dummy
scoreboard objectives add glib.vectorY dummy
scoreboard objectives add glib.vectorZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.vectorX = @s glib.res0
scoreboard players operation @s glib.vectorY = @s glib.res1
scoreboard players operation @s glib.vectorZ = @s glib.res2
