# NAME: Get Vector
# PATH: gunivers-lib:entity/local_vectors/convert_from_vector

# AUTHOR: LeiRoF

# VERSION: 1.0
# MINECRAFT: 1.13

# REQUIREMENTS:
# - Vectors (module)
# - Local Vectors (module)
# - Vars (module)
# - Math (module)

# OUTPUT:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)
# - VectorSpeed (score dummy)

# OUTPUT:
# - VectorLeft (score dummy)
# - VectorUp (score dummy)
# - VectorFront (score dummy)
# - VectorSpeedLocal (score dummy)

# NOTE:

# CODE:
#____________________________________________________________________________________________________

execute store result score @s Var8 run data get entity @s Rotation[0] 1
execute store result score @s Var9 run data get entity @s Rotation[1] 1


scoreboard players operation @s VectorSpeedLocal = @s VectorSpeed


### DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Entity_LocalVectors_ConvertFromVectors,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/local_vectors/convert_from_vectors/1
### END DEBUG

# Cos(Theta)
scoreboard players operation @s Var1 = @s Var8
function gunivers-lib:math/cos
scoreboard players operation @s Var4 = @s Res

# Sin(Theta)
scoreboard players operation @s Var1 = @s Var8
function gunivers-lib:math/sin
scoreboard players operation @s Var5 = @s Res

# Cos(Phi)
scoreboard players operation @s Var1 = @s Var9
function gunivers-lib:math/cos
scoreboard players operation @s Var6 = @s Res

# Sin(Phi)
scoreboard players operation @s Var1 = @s Var9
function gunivers-lib:math/sin
scoreboard players operation @s Var7 = @s Res

### DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Entity_LocalVectors_ConvertFromVectors,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/local_vectors/convert_from_vectors/2
### END DEBUG


# Vector Left
scoreboard players operation @s Var1 = @s VectorX
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s Var1 *= Neg Constant
scoreboard players operation @s VectorLeft = @s Var1

scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var5
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s VectorLeft -= @s Var1


# Vector Up
scoreboard players operation @s Var1 = @s VectorY
scoreboard players operation @s Var1 *= @s Var6
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s VectorUp = @s Var1

scoreboard players operation @s Var1 = @s VectorZ
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 *= @s Var4
scoreboard players operation @s Var1 /= 1000000 Constant
scoreboard players operation @s VectorUp += @s Var1

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
scoreboard players operation @s VectorFront -= @s Var1

scoreboard players operation @s Var1 = @s VectorY
scoreboard players operation @s Var1 *= @s Var7
scoreboard players operation @s Var1 /= 1000 Constant
scoreboard players operation @s VectorFront -= @s Var1






scoreboard players set @s VectorSpeed 1000

### DEBUG
execute if entity @a[tag=Glib_Debug,tag=Debug_Entity_LocalVectors_ConvertFromVectors,tag=!Glib_Init_Menu] run function gunivers-lib:utils/debug/entity/local_vectors/convert_from_vectors/3
### END DEBUG