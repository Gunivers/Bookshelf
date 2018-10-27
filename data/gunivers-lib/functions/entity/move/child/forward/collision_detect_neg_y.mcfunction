# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/forward/collision_detect_neg_y

# CHILD OF: Gunivers-Lib:Entity/move/forward

# CODE:

#----------------#
# Collision on Y #
#----------------#

tag @s add CollisionLocalY

execute if block ~ ~-1 ~ air run tag @s remove CollisionLocalY

tag @s[tag=CollisionLocalY] add CollisionLocal

# DEBUG
#execute at @s[tag=CollisionY,tag=Debug] run summon falling_block ~ ~-0.5 ~0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG
