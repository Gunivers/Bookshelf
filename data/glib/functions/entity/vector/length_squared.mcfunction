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

scoreboard objectives add Var1 dummy
scoreboard objectives add Res1 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s Res1 = @s VectorX
scoreboard players operation @s Res1 *= @s Res1

scoreboard players operation @s Var1 = @s VectorY
scoreboard players operation @s Var1 *= @s Var1
scoreboard players operation @s Res1 += @s Var1

scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var1
scoreboard players operation @s Res1 += @s Var1
