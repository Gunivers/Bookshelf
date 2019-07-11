# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_vector/collision_detect_neg_x

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

# CODE:

#----------------#
# Collision on X #
#----------------#

tag @s add CollisionX

#Detection
execute at @s[scores={VectorX=1..}] if block ~0.5 ~ ~ #gunivers-lib:no_collision run tag @s remove CollisionX
execute at @s[scores={VectorX=..1}] if block ~-0.5 ~ ~ #gunivers-lib:no_collision run tag @s remove CollisionX
tag @s[scores={VectorX=0}] remove CollisionX

#DEBUG
execute at @s[tag=CollisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG
