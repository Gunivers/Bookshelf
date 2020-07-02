#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/length_squared
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.res0 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.res0 = @s VectorX
scoreboard players operation @s glib.res0 *= @s glib.res0

scoreboard players operation @s glib.var0 = @s VectorY
scoreboard players operation @s glib.var0 *= @s glib.var0
scoreboard players operation @s glib.res0 += @s glib.var0

scoreboard players operation @s glib.var0 = @s VectorZ
scoreboard players operation @s glib.var0 *= @s glib.var0
scoreboard players operation @s glib.res0 += @s glib.var0
