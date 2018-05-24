# NAME: Get Vector
# PATH: gunivers-lib:entity/vectors/get

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Var1 (score dummy)
# - Var2 (score dummy)
# - Var3 (score dummy)
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# NOTE:

# To use this function, write this:
# execute as YourEntity positioned EndOfYourVector run function gunivers-lib:entity/vectors/get

# For exemple this:
# execute as @p positioned ^ ^ ^1 run function gunivers-lib:entity/vectors/get
# Will set on your VectorX,Y,Z the coordinates of the vector facing in front of you

# You can also get a vector to another entity. This:
# execute as @p at @s at @e[type=armor_stand,limit=1,sort=nearest] run function gunivers-lib:entity/vectors/get
# Will set on your VectorX,Y,Z the coordinates of the vector from you to the nearest armor stand

# CODE:
execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

summon armor_stand ^ ^ ^ {Tags:["GetVec"]}
execute store result score @s VectorX run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s VectorY run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s VectorZ run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[2] 1000

scoreboard players operation @s VectorX -= @s Var1
scoreboard players operation @s VectorY -= @s Var2
scoreboard players operation @s VectorZ -= @s Var3

kill @e[tag=GetVec,type=armor_stand]

scoreboard players set @s VectorSpeed 1000