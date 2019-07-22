# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/move/child/by_vector/collision_detect_neg_x

# CHILD OF: Gunivers-Lib:Entity/move/by_vector

# CODE:

#----------------#
# Collision on X #
#----------------#

tag @s add CollisionZ

#Detection
execute at @s[scores={VectorZ=1..}] if block ~ ~ ~0.5 #gunivers-lib:no_collision run tag @s remove CollisionZ
execute at @s[scores={VectorZ=..1}] if block ~ ~ ~-0.5 #gunivers-lib:no_collision run tag @s remove CollisionZ
tag @s[scores={VectorZ=0}] remove CollisionZ

#DEBUG
execute at @s[tag=CollisionZ,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Glib","Debug"]}
# END DEBUG