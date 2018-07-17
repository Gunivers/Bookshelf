# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

#----------------#
# Collision on Y #
#----------------#
tag @s add CollisionY
execute if block ~ ~-1 ~ air run tag @s remove CollisionY


# DEBUG
#execute at @s[tag=CollisionY,tag=Debug] run summon falling_block ~ ~-0.5 ~0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG