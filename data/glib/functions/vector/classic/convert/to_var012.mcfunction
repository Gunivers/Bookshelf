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

# Input: glib.vectorX (score dummy)
# Input: glib.vectorY (score dummy)
# Input: glib.vectorZ (score dummy)

# Output: glib.var0 (score dummy)
# Output: glib.var1 (score dummy)
# Output: glib.var2 (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy

scoreboard objectives add glib.vectorX dummy
scoreboard objectives add glib.vectorY dummy
scoreboard objectives add glib.vectorZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var0 = @s glib.vectorX
scoreboard players operation @s glib.var1 = @s glib.vectorY
scoreboard players operation @s glib.var2 = @s glib.vectorZ
