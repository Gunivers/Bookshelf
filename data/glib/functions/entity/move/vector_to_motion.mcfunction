#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/move/vector_to_motion
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var = @s VectorX
scoreboard players operation @s glib.var2 = @s VectorY
scoreboard players operation @s glib.var3 = @s VectorZ

# Apply speed modifier
scoreboard players operation @s glib.var *= @s VectorSpeed
scoreboard players operation @s glib.var2 *= @s VectorSpeed
scoreboard players operation @s glib.var3 *= @s VectorSpeed
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const
scoreboard players operation @s glib.var3 /= 1000 glib.const

execute as @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s glib.var
execute as @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s glib.var2
execute as @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s glib.var3

execute as @s[scores={Collision=1..}] run function glib:entity/move/child/by_motion/collision
