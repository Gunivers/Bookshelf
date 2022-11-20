#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.math:basis_rotatation_3d
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s bs.var0 (score) : Component X of the vector in base with orientation x , y
# Input: @s bs.var1 (score) : Component Y of the vector in base with orientation x , y
# Input: @s bs.var2 (score) : Component Z of the vector in base with orientation x , y

# Input: @s bs.var3 (score) : Horizontal rotation (a)
# Input: @s bs.var4 (score) : Vertical rotation (b)

# Output: @s bs.res0 (score) : Component X' of the vector in base with orientation x+a , y+b
# Output: @s bs.res1 (score) : Component Y' of the vector in base with orientation x+a , y+b
# Output: @s bs.res2 (score) : Component Z' of the vector in base with orientation x+a , y+b

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation basisRot.x bs = @s bs.var0
scoreboard players operation basisRot.y bs = @s bs.var1
scoreboard players operation basisRot.z bs = @s bs.var2

scoreboard players operation basisRot.h bs = @s bs.var3
scoreboard players operation basisRot.v bs = @s bs.var4

# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"------------------------------","color":"dark_gray"}]

# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"VectorX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.var0"},"color":"gold"},{"text":" VectorY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.var1"},"color":"gold"},{"text":" VectorZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.var2"},"color":"gold"}]
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Angle H: ","color":"dark_gray"},{"score":{"name":"basisRot.h","objective":"bs"},"color":"gold"},{"text":" Angle V: ","color":"dark_gray"},{"score":{"name":"basisRot.v","objective":"bs"},"color":"gold"}]

# Cos(Theta)
scoreboard players operation @s bs.var0 = basisRot.h bs
function bs.math:trig/cos
scoreboard players operation bs.cos.h bs = @s bs.res0

# Sin(Theta)
scoreboard players operation @s bs.var0 = basisRot.h bs
function bs.math:trig/sin
scoreboard players operation bs.sin.h bs = @s bs.res0

# Cos(Phi)
scoreboard players operation @s bs.var0 = basisRot.v bs
function bs.math:trig/cos
scoreboard players operation bs.cos.v bs = @s bs.res0

# Sin(Phi)
scoreboard players operation @s bs.var0 = basisRot.v bs
function bs.math:trig/sin
scoreboard players operation bs.sin.v bs = @s bs.res0

# Vector Left
scoreboard players operation basisRot bs = basisRot.z bs
scoreboard players operation basisRot bs *= bs.sin.h bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation @s bs.res0 = basisRot bs

scoreboard players operation basisRot bs = basisRot.x bs
scoreboard players operation basisRot bs *= bs.cos.h bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation basisRot bs *= Neg bs.const
scoreboard players operation @s bs.res0 -= basisRot bs

# Vector Up
scoreboard players operation basisRot bs = basisRot.y bs
scoreboard players operation basisRot bs *= bs.cos.v bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation @s bs.res1 = basisRot bs

scoreboard players operation basisRot bs = basisRot.z bs
scoreboard players operation basisRot bs *= bs.sin.v bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation basisRot bs *= bs.cos.h bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation @s bs.res1 += basisRot bs

scoreboard players operation basisRot bs = basisRot.x bs
scoreboard players operation basisRot bs *= bs.sin.v bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation basisRot bs *= bs.sin.h bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation @s bs.res1 -= basisRot bs

# Vector Front
scoreboard players operation basisRot bs = basisRot.z bs
scoreboard players operation basisRot bs *= bs.cos.v bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation basisRot bs *= bs.cos.h bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation @s bs.res2 = basisRot bs

scoreboard players operation basisRot bs = basisRot.x bs
scoreboard players operation basisRot bs *= bs.cos.v bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation basisRot bs *= bs.sin.h bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation @s bs.res2 -= basisRot bs

scoreboard players operation basisRot bs = basisRot.y bs
scoreboard players operation basisRot bs *= bs.sin.v bs
scoreboard players operation basisRot bs /= 1000 bs.const
scoreboard players operation @s bs.res2 -= basisRot bs


# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"bs.vectorLeft: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res0"},"color":"gold"},{"text":" bs.vectorUp: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res1"},"color":"gold"},{"text":" bs.vectorFront: ","color":"dark_gray"},{"score":{"name":"@s","objective":"bs.res2"},"color":"gold"}]
