#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/convert/from_res123
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#location
# Parallelizable: true

#__________________________________________________
# PARAMETERS

# Input: @s glib.locX (score)
# Input: @s glib.locY (score)
# Input: @s glib.locZ (score)
# Output: @s glib.var0 (score)
# Output: @s glib.var1 (score)
# Output: @s glib.var2 (score)

#__________________________________________________
# INIT

scoreboard objectives add glib.locX
scoreboard objectives add glib.locY
scoreboard objectives add glib.locZ

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.locX = @s glib.res0
scoreboard players operation @s glib.locY = @s glib.res1
scoreboard players operation @s glib.locZ = @s glib.res2
