# NAME: Get Vector
# PATH: gunivers-lib:entity/vectors_ori/get_by_vector

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)

# OUTPUT:
# - VectorLeft (score dummy)
# - VectorUp (score dummy)
# - VectorFront (score dummy)

# NOTE:

# CODE:
execute store result score @s Var1 run data get entity @s Rotation[0] 1
execute store result score @s Var2 run data get entity @s Rotation[1] 1

Var7 = 

scoreboard players set @s VectorSpeed 1000

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Vectors/Get_By_Actual_Orientation]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG