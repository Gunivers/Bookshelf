# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

execute store result score @s Var1 run data get entity @s Rotation[0] 1
execute store result score @s Var2 run data get entity @s Rotation[1] 1

#----------------#
# Collision on Z #
#----------------#

tag @s[scores={Var1=-89..89}] add CollisionPosZ
tag @s[scores={Var1=..-91}] add CollisionNegZ
tag @s[scores={Var1=91..}] add CollisionNegZ

tag @s[scores={Collision=1..}] add CollisionZ
tag @s[scores={Collision=1..,Var1=0}] remove CollisionZ

execute as @s[tag=CollisionPosZ] at @s if block ~ ~ ~1 air run tag @s remove CollisionZ
execute as @s[tag=CollisionNegZ] at @s if block ~ ~ ~-1 air run tag @s remove CollisionZ


scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] Var1 += 180 Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] Var1 *= Neg Constant

tag @s[scores={Collision=1..},tag=CollisionZ] add Collision

# DEBUG
execute at @s[tag=CollisionZ,tag=Debug] run summon falling_block ~-0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG


#---------------------#
# Set new orientation #
#---------------------#

function gunivers-lib:entity/orientation/set