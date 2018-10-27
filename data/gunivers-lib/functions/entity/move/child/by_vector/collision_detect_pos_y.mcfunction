# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_vector/collision_detect_pos_y

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

# CODE:

#----------------#
# Collision on Y #
#----------------#
tag @s add CollisionY

execute if block ~ ~1 ~ air run tag @s remove CollisionY


# DEBUG
#execute at @s[tag=CollisionY,tag=Debug] run summon falling_block ~ ~-0.5 ~0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG