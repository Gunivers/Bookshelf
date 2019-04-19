# NAME: Get Vector
# PATH: gunivers-lib:entity/vectors/get

# AUTHOR: KubbyDev

# VERSION: 1.0
# MINECRAFT: 1.13

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

# INIT:
scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

# CODE:
#____________________________________________________________________________________________________

execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

summon armor_stand ~ ~ ~ {Tags:["GetVec"],Invisible:1}
execute store result score @s VectorX run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[0] 1000
execute store result score @s VectorY run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[1] 1000
execute store result score @s VectorZ run data get entity @e[type=armor_stand,tag=GetVec,limit=1] Pos[2] 1000

scoreboard players operation @s VectorX -= @s Var1
scoreboard players operation @s VectorY -= @s Var2
scoreboard players operation @s VectorZ -= @s Var3

kill @e[tag=GetVec,type=armor_stand]

scoreboard players set @s VectorSpeed 2000

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Vectors/Get_By_Actual_Orientation]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG