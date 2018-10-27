# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/forward/collision_detect_pos_x

# CHILD OF: Gunivers-Lib:Entity/move/forward

# CODE:

#----------------#
# Collision on X #
#----------------#

tag @s add CollisionLocalX

execute if block ~1 ~ ~ air run tag @s remove CollisionLocalX

tag @s[tag=CollisionLocalX] add CollisionLocal

# DEBUG
#execute at @s[tag=CollisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG
