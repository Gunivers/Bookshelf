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
execute store result score @s Var8 run data get entity @s Rotation[0] 1
execute store result score @s Var9 run data get entity @s Rotation[1] 1

scoreboard players operation @s Var8 %= 360 Constant
scoreboard players operation @s Var9 %= 180 Constant

scoreboard players add @s[scores={Var8=..-1}] Var8 360
scoreboard players add @s[scores={Var9=..-1}] Var9 180

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Vectors/Get_By_Actual_Orientation]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Phi: ","color":"red"},{"score":{"name":"@s","objective":"Var8"}},{"text":".   Tetha: ","color":"red"},{"score":{"name":"@s","objective":"Var9"}}]
### END DEBUG

# Cos(Phi)
scoreboard players operation @s Var1 = @s Var8
function gunivers-lib:math/cos
scoreboard players operation @s Var4 = @s Res

# Sin(Phi)
function gunivers-lib:math/sin
scoreboard players operation @s Var5 = @s Res

# Cos(Theta)
scoreboard players operation @s Var1 = @s Var9
function gunivers-lib:math/cos
scoreboard players operation @s Var6 = @s Res

# Sin(Theta)
function gunivers-lib:math/sin
scoreboard players operation @s Var7 = @s Res

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"Cos(Phi): ","color":"red"},{"score":{"name":"@s","objective":"Var4"}},{"text":".   Sin(Phi): ","color":"red"},{"score":{"name":"@s","objective":"Var5"}},{"text":".   Cos(Theta): ","color":"red"},{"score":{"name":"@s","objective":"Var6"}},{"text":".   Sin(Thta): ","color":"red"},{"score":{"name":"@s","objective":"Var7"}}]
### END DEBUG


# Vector Left
scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorLeft = @s Var1

scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorLeft += @s Var1

# Vector Up
scoreboard players operation @s Var1 = @s VectorY
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s VectorUp = @s Var1

scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorUp -= @s Var1

scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorUp -= @s Var1

# Vector Front
scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorFront = @s Var1

scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorFront += @s Var1

scoreboard players operation @s Var1 = @s VectorY
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s VectorFront += @s Var1






scoreboard players set @s VectorSpeed 1000

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Left: ","color":"red"},{"score":{"name":"@s","objective":"VectorLeft"}},{"text":".   Up: ","color":"red"},{"score":{"name":"@s","objective":"VectorUp"}},{"text":".   Front: ","color":"red"},{"score":{"name":"@s","objective":"VectorFront"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG