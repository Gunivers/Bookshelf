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

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute as @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s glib.vectorX
execute as @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s glib.vectorY
execute as @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s glib.vectorZ

execute as @s[scores={glib.collision=1..}] run function glib:move/by_motion/child/collision
