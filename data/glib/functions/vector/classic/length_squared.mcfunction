#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/length_squared
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation vector.x2 glib.tmp = @s glib.var0
scoreboard players operation vector.x2 glib.tmp *= @s glib.var0

scoreboard players operation vector.y2 glib.tmp = @s glib.var1
scoreboard players operation vector.y2 glib.tmp *= @s glib.var1

scoreboard players operation vector.z2 glib.tmp = @s glib.var2
scoreboard players operation vector.z2 glib.tmp *= @s glib.var2

scoreboard players operation @s glib.res0 = vector.x2 glib.tmp
scoreboard players operation @s glib.res0 += vector.y2 glib.tmp
scoreboard players operation @s glib.res0 += vector.z2 glib.tmp
