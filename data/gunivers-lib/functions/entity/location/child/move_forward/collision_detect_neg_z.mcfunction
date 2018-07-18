# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

#----------------#
# Collision on Z #
#----------------#

tag @s add CollisionZ

execute if block ~ ~ ~-1 air run tag @s remove CollisionZ

tag @s[tag=CollisionZ] add Collision

# DEBUG
#execute at @s[tag=CollisionZ,tag=Debug] run summon falling_block ~-0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG
