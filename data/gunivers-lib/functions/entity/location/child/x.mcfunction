# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

execute store result score @s Var1 run data get entity @s Rotation[0] 1
execute store result score @s Var2 run data get entity @s Rotation[1] 1


#----------------#
# Collision on X #
#----------------#

tag @s[scores={Var1=1..179}] add CollisionNegX
tag @s[scores={Var1=-179..-1}] add CollisionPosX

tag @s[scores={Collision=1..}] add CollisionX
tag @s[scores={Collision=1..,Var1=0}] remove CollisionX

execute as @s[tag=CollisionPosX] at @s if block ~1 ~ ~ air run tag @s remove CollisionX
execute as @s[tag=CollisionNegX] at @s if block ~-1 ~ ~ air run tag @s remove CollisionX

scoreboard players operation @s[scores={Collision=1..3},tag=CollisionX] Var1 *= Neg Constant

tag @s[scores={Collision=1..},tag=CollisionX] add Collision

#DEBUG
execute at @s[tag=CollisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG


#---------------------#
# Set new orientation #
#---------------------#

function gunivers-lib:entity/orientation/set