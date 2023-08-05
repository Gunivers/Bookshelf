#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.move:vector_to_motion
# Documentation: https://bs-core.readthedocs.io//entity#move
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

execute as @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s bs.vector.x
execute as @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s bs.vector.y
execute as @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s bs.vector.z

execute as @s[scores={bs.move.collision=1..}] run function bs.move:by_motion/child/collision
