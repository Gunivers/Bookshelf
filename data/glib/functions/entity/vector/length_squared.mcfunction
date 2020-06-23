#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/vector/length_squared
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.res dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.res = @s VectorX
scoreboard players operation @s glib.res *= @s glib.res

scoreboard players operation @s glib.var = @s VectorY
scoreboard players operation @s glib.var *= @s glib.var
scoreboard players operation @s glib.res += @s glib.var

scoreboard players operation @s glib.var = @s VectorZ
scoreboard players operation @s glib.var *= @s glib.var
scoreboard players operation @s glib.res += @s glib.var
