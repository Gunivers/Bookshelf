# NAME: Move Entity By Vector
# PATH: Gunivers-Lib:Entity/Location/Child/Move-Collision

# CHILD OF: Gunivers-Lib:Entity/Location/Move

# CODE:

#----------------#
# Collision on X #
#----------------#

tag @s[scores={Collision=1..}] add CollisionX
tag @s[scores={Collision=1..,Var1=0}] remove CollisionX

execute as @s[scores={Var1=1..}] at @s if block ~1 ~ ~ air run tag @s remove CollisionX
execute as @s[scores={Var1=..-1}] at @s if block ~-1 ~ ~ air run tag @s remove CollisionX

scoreboard players operation @s[scores={Collision=1..3},tag=CollisionX] VectorX *= Neg Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionX] Var7 *= Neg Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionX] Var1 *= Neg Constant
scoreboard players set @s[scores={Collision=4},tag=CollisionX] VectorX 0
scoreboard players set @s[scores={Collision=4},tag=CollisionX] Var7 0
scoreboard players set @s[scores={Collision=4},tag=CollisionX] Var1 0
kill @s[type=!player,scores={Collision=6},tag=CollisionX]
tag @s[scores={Collision=5..6},tag=CollisionX] remove DirMoving
tag @s[scores={Collision=1..},tag=CollisionX] add Collision

#DEBUG
execute at @s[tag=CollisionX,tag=Debug] run summon falling_block ~0.1 ~-0.5 ~-0.1 {BlockState:{Name:"gold_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG


#----------------#
# Collision on Y #
#----------------#
tag @s[scores={Collision=1..}] add CollisionY
tag @s[scores={Collision=1..,Var1=0}] remove CollisionY

execute as @s[scores={Var2=1..}] at @s if block ~ ~1 ~ air run tag @s remove CollisionY
execute as @s[scores={Var2=..-1}] at @s if block ~ ~-1 ~ air run tag @s remove CollisionY



scoreboard players operation @s[scores={Collision=1},tag=CollisionY] VectorY *= Neg Constant
scoreboard players operation @s[scores={Collision=1},tag=CollisionY] Var8 *= Neg Constant
scoreboard players operation @s[scores={Collision=1},tag=CollisionY] Var2 *= Neg Constant
scoreboard players set @s[scores={Collision=2..4},tag=CollisionY] VectorY 0
scoreboard players set @s[scores={Collision=2..4},tag=CollisionY] Var8 0
scoreboard players set @s[scores={Collision=2..4},tag=CollisionY] Var2 0
kill @s[type=!player,scores={Collision=6},tag=CollisionY]
tag @s[scores={Collision=5..6},tag=CollisionY] remove DirMoving
tag @s[scores={Collision=1..},tag=CollisionY] add Collision

# DEBUG
execute at @s[tag=CollisionY,tag=Debug] run summon falling_block ~ ~-0.5 ~0.1 {BlockState:{Name:"iron_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG


#----------------#
# Collision on Z #
#----------------#

tag @s[scores={Collision=1..}] add CollisionZ
tag @s[scores={Collision=1..,Var1=0}] remove CollisionZ

execute as @s[scores={Var3=1..}] at @s if block ~ ~ ~1 air run tag @s remove CollisionZ
execute as @s[scores={Var3=..-1}] at @s if block ~ ~ ~-1 air run tag @s remove CollisionZ

scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] VectorZ *= Neg Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] Var9 *= Neg Constant
scoreboard players operation @s[scores={Collision=1..3},tag=CollisionZ] Var3 *= Neg Constant
scoreboard players set @s[scores={Collision=4},tag=CollisionZ] VectorZ 0
scoreboard players set @s[scores={Collision=4},tag=CollisionZ] Var9 0
scoreboard players set @s[scores={Collision=4},tag=CollisionZ] Var3 0
kill @s[type=!player,scores={Collision=6},tag=CollisionZ]
tag @s[scores={Collision=5..6},tag=CollisionZ] remove DirMoving
tag @s[scores={Collision=1..},tag=CollisionZ] add Collision

# DEBUG
execute at @s[tag=CollisionZ,tag=Debug] run summon falling_block ~-0.1 ~-0.5 ~-0.1 {BlockState:{Name:"diamond_block"},NoGravity:1,Time:50,Tags:["Debug"]}
# END DEBUG

