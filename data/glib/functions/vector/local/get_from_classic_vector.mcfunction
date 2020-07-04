#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:vector/classic/get_from_local_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s Var0 (score) : Local Vector Left
# Input: @s Var1 (score) : Local Vector Up
# Input: @s Var2 (score) : Local Vector Front
# Output: @s Res0 (score) : Vector X
# Output: @s Res1 (score) : Vector Y
# Output: @s Res2 (score) : Vector Z

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation vectorX glib.var0 = @s glib.var0
scoreboard players operation vectorY glib.var0 = @s glib.var1
scoreboard players operation vectorZ glib.var0 = @s glib.var1

execute store result score glib.vector.get_from_local.h glib.var0 run data get entity @s Rotation[0] 1
execute store result score glib.vector.get_from_local.v glib.var0 run data get entity @s Rotation[1] 1

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Local_Vectors/Convert_From_Vector]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"glib.vectorZ"}}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.var7"}},{"text":".   Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.var8"}}]
### END DEBUG

# Cos(Theta)
scoreboard players operation @s glib.var0 = glib.vector.get_from_local.h glib.var0
function glib:math/cos
scoreboard players operation glib.cos.h glib.var0 = @s glib.res0

# Sin(Theta)
scoreboard players operation @s glib.var0 = glib.vector.get_from_local.h glib.var0
function glib:math/sin
scoreboard players operation glib.sin.h glib.var0 = @s glib.res0

# Cos(Phi)
scoreboard players operation @s glib.var0 = glib.vector.get_from_local.v glib.var0
function glib:math/cos
scoreboard players operation glib.cos.v glib.var0 = @s glib.res0

# Sin(Phi)
scoreboard players operation @s glib.var0 = glib.vector.get_from_local.v glib.var0
function glib:math/sin
scoreboard players operation glib.sin.v glib.var0 = @s glib.res0

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"Cos(Theta): ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}},{"text":".   Sin(Theta): ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Cos(Phi): ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Sin(Phi): ","color":"red"},{"score":{"name":"@s","objective":"glib.var6"}}]
### END DEBUG

# Vector Left
scoreboard players operation @s glib.var0 = vectorX glib.var0
scoreboard players operation @s glib.var0 *= glib.cos.h glib.var0
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var0 *= Neg glib.const
scoreboard players operation @s glib.res0 = @s glib.var0

scoreboard players operation @s glib.var0 = vectorZ glib.var0
scoreboard players operation @s glib.var0 *= glib.sin.h glib.var0
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.res0 -= @s glib.var0

# Vector Up
scoreboard players operation @s glib.var0 = vectorY glib.var0
scoreboard players operation @s glib.var0 *= glib.cos.v glib.var0
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.res1 = @s glib.var0

scoreboard players operation @s glib.var0 = vectorZ glib.var0
scoreboard players operation @s glib.var0 *= glib.sin.v glib.var0
scoreboard players operation @s glib.var0 *= glib.cos.h glib.var0
scoreboard players operation @s glib.var0 /= 1000000 glib.const
scoreboard players operation @s glib.res1 += @s glib.var0

scoreboard players operation @s glib.var0 = vectorZ glib.var0
scoreboard players operation @s glib.var0 *= glib.sin.v glib.var0
scoreboard players operation @s glib.var0 *= glib.sin.h glib.var0
scoreboard players operation @s glib.var0 /= 1000000 glib.const
scoreboard players operation @s glib.res1 -= @s glib.var0

# Vector Front
scoreboard players operation @s glib.var0 = vectorZ glib.var0
scoreboard players operation @s glib.var0 *= glib.cos.v glib.var0
scoreboard players operation @s glib.var0 *= glib.cos.h glib.var0
scoreboard players operation @s glib.var0 /= 1000000 glib.const
scoreboard players operation @s glib.res1 = @s glib.var0

scoreboard players operation @s glib.var0 = vectorX glib.var0
scoreboard players operation @s glib.var0 *= glib.cos.v glib.var0
scoreboard players operation @s glib.var0 *= glib.sin.h glib.var0
scoreboard players operation @s glib.var0 /= 1000000 glib.const
scoreboard players operation @s glib.res1 -= @s glib.var0

scoreboard players operation @s glib.var0 = vectorY glib.var0
scoreboard players operation @s glib.var0 *= glib.sin.v glib.var0
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.res1 -= @s glib.var0

scoreboard players operation @s glib.var0 = vectorX glib.var0

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Left: ","color":"red"},{"score":{"name":"@s","objective":"VectorLeft"}},{"text":".   Up: ","color":"red"},{"score":{"name":"@s","objective":"VectorUp"}},{"text":".   Front: ","color":"red"},{"score":{"name":"@s","objective":"VectorFront"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
