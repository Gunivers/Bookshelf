#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.move:vector_to_motion
# Documentation: https://glib-core.readthedocs.io//entity#move
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

execute as @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s bs.vectorX
execute as @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s bs.vectorY
execute as @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s bs.vectorZ

execute as @s[scores={bs.collision=1..}] run function bs.move:by_motion/child/collision
