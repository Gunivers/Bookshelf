# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move
1
# CODE:

execute store result score @s Var1 run data get entity @s Rotation[0] 1
execute store result score @s Var2 run data get entity @s Rotation[1] 1

tag @s[scores={Var2=1..}] add CollisionNegY
tag @s[scores={Var2=..-1}] add CollisionPosY

tag @s[scores={Var1=1..179}] add CollisionNegX
tag @s[scores={Var1=-179..-1}] add CollisionPosX

tag @s[scores={Var1=-89..89}] add CollisionNegZ
tag @s[scores={Var1=..-91}] add CollisionPosZ
tag @s[scores={Var1=91..}] add CollisionPosZ

#----------------#
# Collision on X #
#----------------#

tag @s[scores={Collision=1..}] add CollisionX
tag @s[scores={Collision=1..,Var1=0..0}] remove CollisionX

execute as @s[tag=CollisionPosX] at @s if block ~1 ~ ~ air run tag @s remove CollisionX
execute as @s[tag=CollisionPosX] at @s if block ~-1 ~ ~ air run tag @s remove CollisionX

tag @s[scores={Var1=..-1}] add Var1Neg
scoreboard players operation @s[scores={Collision=1..3,Var1=1..},tag=CollisionX] Var1 -= 180 Constant
scoreboard players operation @s[scores={Collision=1..3},tag=Var1Neg,tag=CollisionX] Var1 += 180 Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionX] Var1 *= Neg Constant

tag @s remove Var1Neg
tag @s[scores={Collision=1..},tag=CollisionX] add Collision

#DEBUG
execute at @s[tag=CollisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG


#----------------#
# Collision on Y #
#----------------#
tag @s[scores={Collision=1..}] add CollisionY
tag @s[scores={Collision=1..,Var1=0..0}] remove CollisionY

execute as @s[tag=CollisionPosY] at @s if block ~ ~1 ~ air run tag @s remove CollisionY
execute as @s[tag=CollisionNegY] at @s if block ~ ~-1 ~ air run tag @s remove CollisionY


scoreboard players operation @s[scores={Collision=1..3},tag=CollisionY] Var2 *= Neg Constant
tag @s[scores={Collision=1..},tag=CollisionY] add Collision

# DEBUG
execute at @s[tag=CollisionY,tag=Debug] run summon falling_block ~ ~-0.5 ~0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG


#----------------#
# Collision on Z #
#----------------#

tag @s[scores={Collision=1..}] add CollisionZ
tag @s[scores={Collision=1..,Var1=0..0}] remove CollisionZ

execute as @s[tag=CollisionPosZ] at @s if block ~ ~ ~1 air run tag @s remove CollisionZ
execute as @s[tag=CollisionNegZ] at @s if block ~ ~ ~-1 air run tag @s remove CollisionZ

scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] Var1 *= Neg Constant
tag @s[scores={Collision=1..},tag=CollisionZ] add Collision

# DEBUG
execute at @s[tag=CollisionZ,tag=Debug] run summon falling_block ~-0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG

#---------------------#
# Set new orientation #
#---------------------#

function gunivers-lib:entity/orientation/set