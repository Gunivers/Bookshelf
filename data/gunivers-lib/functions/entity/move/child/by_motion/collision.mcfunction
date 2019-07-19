# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_motion/collision

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

# CODE:

#----------------#
# Collision on X #
#----------------#
tag @s remove Collision

execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/move/child/by_motion/collision_detect_x
tag @s[scores={Collision=1..},tag=CollisionX] add Collision

#----------------#
# Collision on Y #
#----------------#

execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/move/child/by_motion/collision_detect_y
tag @s[scores={Collision=1..},tag=CollisionY] add Collision

#----------------#
# Collision on Z #
#----------------#

execute as @s[scores={Collision=1..}] at @s run function gunivers-lib:entity/move/child/by_motion/collision_detect_z
tag @s[scores={Collision=1..},tag=CollisionZ] add Collision

#-----------#
# Reactions #
#-----------#

execute if entity @s[tag=Collision] run function gunivers-lib:entity/move/config/collision_reactions/_main_


