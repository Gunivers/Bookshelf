#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:move/vector_to_motion
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#move
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s glib.var0 = @s VectorX
scoreboard players operation @s glib.var1 = @s VectorY
scoreboard players operation @s glib.var2 = @s VectorZ

# Apply speed modifier
scoreboard players operation @s glib.var0 *= @s VectorSpeed
scoreboard players operation @s glib.var1 *= @s VectorSpeed
scoreboard players operation @s glib.var2 *= @s VectorSpeed
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var1 /= 1000 glib.const
scoreboard players operation @s glib.var2 /= 1000 glib.const

execute as @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s glib.var0
execute as @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s glib.var1
execute as @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s glib.var2

execute as @s[scores={glib.collision=1..}] run function glib_child:default/move/by_motion/collision
