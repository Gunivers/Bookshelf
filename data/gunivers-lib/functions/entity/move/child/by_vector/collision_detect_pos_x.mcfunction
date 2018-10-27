# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_vector/collision_detect_pos_x

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

# CODE:

#----------------#
# Collision on X #
#----------------#

tag @s add CollisionX

execute if block ~1 ~ ~ air run tag @s remove CollisionX

#DEBUG
#execute at @s[tag=CollisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG
