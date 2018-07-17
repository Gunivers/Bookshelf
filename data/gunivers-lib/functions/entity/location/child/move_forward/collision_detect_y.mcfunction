# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

execute store result score @s Var1 run data get entity @s Rotation[0] 1
execute store result score @s Var2 run data get entity @s Rotation[1] 1

#----------------#
# Collision on Y #
#----------------#
execute store result score @s Var2 run data get entity @s Rotation[1] 1

tag @s[scores={Var2=1..}] add CollisionNegY
tag @s[scores={Var2=..-1}] add CollisionPosY

tag @s[scores={Collision=1..}] add CollisionY
tag @s[scores={Collision=1..,Var2=0}] remove CollisionY

execute as @s[tag=CollisionPosY] at @s if block ~ ~1 ~ air run tag @s remove CollisionY
execute as @s[tag=CollisionNegY] at @s if block ~ ~-1 ~ air run tag @s remove CollisionY


scoreboard players operation @s[scores={Collision=1..3},tag=CollisionY] Var2 *= Neg Constant
tag @s[scores={Collision=1..},tag=CollisionY] add Collision

# DEBUG
execute at @s[tag=CollisionY,tag=Debug] run summon falling_block ~ ~-0.5 ~0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG

#---------------------#
# Set new orientation #
#---------------------#

function gunivers-lib:entity/orientation/set