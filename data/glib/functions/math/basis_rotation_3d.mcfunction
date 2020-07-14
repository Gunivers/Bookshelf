#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: glib:math/basis_rotatation_3d
# Parallelizable: true
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s Var0 (score) : Vector in base with orientation x , y
# Input: @s Var1 (score) : Vector in base with orientation x , y
# Input: @s Var2 (score) : Vector in base with orientation x , y

# Input: @s Var3 (score) : Horizontal rotation (a)
# Input: @s Var4 (score) : Vertical rotation (b)

# Output: @s Res0 (score) : Vector in base with orientation x+a , y+b
# Output: @s Res1 (score) : Vector in base with orientation x+a , y+b
# Output: @s Res2 (score) : Vector in base with orientation x+a , y+b

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation basisRot.x glib = @s glib.var0
scoreboard players operation basisRot.y glib = @s glib.var1
scoreboard players operation basisRot.z glib = @s glib.var2

scoreboard players operation basisRot.h glib = @s glib.var3
scoreboard players operation basisRot.v glib = @s glib.var4

# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"------------------------------","color":"dark_gray"}]

# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"VectorX: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.var0"},"color":"gold"},{"text":" VectorY: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.var1"},"color":"gold"},{"text":" VectorZ: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.var2"},"color":"gold"}]
# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"Angle H: ","color":"dark_gray"},{"score":{"name":"basisRot.h","objective":"glib"},"color":"gold"},{"text":" Angle V: ","color":"dark_gray"},{"score":{"name":"basisRot.v","objective":"glib"},"color":"gold"}]

# Cos(Theta)
scoreboard players operation @s glib.var0 = basisRot.h glib
function glib:math/cos
scoreboard players operation glib.cos.h glib = @s glib.res0

# Sin(Theta)
scoreboard players operation @s glib.var0 = basisRot.h glib
function glib:math/sin
scoreboard players operation glib.sin.h glib = @s glib.res0

# Cos(Phi)
scoreboard players operation @s glib.var0 = basisRot.v glib
function glib:math/cos
scoreboard players operation glib.cos.v glib = @s glib.res0

# Sin(Phi)
scoreboard players operation @s glib.var0 = basisRot.v glib
function glib:math/sin
scoreboard players operation glib.sin.v glib = @s glib.res0

# Vector Left
scoreboard players operation basisRot glib = basisRot.z glib
scoreboard players operation basisRot glib *= glib.sin.h glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation @s glib.res0 = basisRot glib

scoreboard players operation basisRot glib = basisRot.x glib
scoreboard players operation basisRot glib *= glib.cos.h glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation basisRot glib *= Neg glib.const
scoreboard players operation @s glib.res0 -= basisRot glib

# Vector Up
scoreboard players operation basisRot glib = basisRot.y glib
scoreboard players operation basisRot glib *= glib.cos.v glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation @s glib.res1 = basisRot glib

scoreboard players operation basisRot glib = basisRot.z glib
scoreboard players operation basisRot glib *= glib.sin.v glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation basisRot glib *= glib.cos.h glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation @s glib.res1 += basisRot glib

scoreboard players operation basisRot glib = basisRot.x glib
scoreboard players operation basisRot glib *= glib.sin.v glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation basisRot glib *= glib.sin.h glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation @s glib.res1 -= basisRot glib

# Vector Front
scoreboard players operation basisRot glib = basisRot.z glib
scoreboard players operation basisRot glib *= glib.cos.v glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation basisRot glib *= glib.cos.h glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation @s glib.res2 = basisRot glib

scoreboard players operation basisRot glib = basisRot.x glib
scoreboard players operation basisRot glib *= glib.cos.v glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation basisRot glib *= glib.sin.h glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation @s glib.res2 -= basisRot glib

scoreboard players operation basisRot glib = basisRot.y glib
scoreboard players operation basisRot glib *= glib.sin.v glib
scoreboard players operation basisRot glib /= 1000 glib.const
scoreboard players operation @s glib.res2 -= basisRot glib


# tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"VectorLeft: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res0"},"color":"gold"},{"text":" VectorUp: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res1"},"color":"gold"},{"text":" VectorFront: ","color":"dark_gray"},{"score":{"name":"@s","objective":"glib.res2"},"color":"gold"}]
