#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/local-vector/get_from_relative_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#local-vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

# Input: @s glib.vector.x (score)
# Input: @s glib.vector.y (score)
# Input: @s glib.vector.z (score)

#__________________________________________________
# INIT

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

scoreboard objectives add VectorLeft dummy
scoreboard objectives add VectorUp dummy
scoreboard objectives add VectorFront dummy
scoreboard objectives add VectorSpeedLocal dummy

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var6 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy

scoreboard objectives add glib.res0 dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.var7 run data get entity @s Rotation[0] 1
execute store result score @s glib.var8 run data get entity @s Rotation[1] 1

scoreboard players operation @s VectorSpeedLocal = @s VectorSpeed

### DEBUG
execute if entity @a[tag=glib.debug,tag=glib.debug.entity.local_vector.get_from_relative_vector,tag=!Glib_Menu] run function glib:utils/debug/entity/local_vectors/convert_from_vectors/1
### END DEBUG

# Cos(Theta)
scoreboard players operation @s glib.var0 = @s glib.var7
function glib:math/cos
scoreboard players operation @s glib.var3 = @s glib.res0

# Sin(Theta)
scoreboard players operation @s glib.var0 = @s glib.var7
function glib:math/sin
scoreboard players operation @s glib.var4 = @s glib.res0

# Cos(Phi)
scoreboard players operation @s glib.var0 = @s glib.var8
function glib:math/cos
scoreboard players operation @s glib.var4 = @s glib.res0

# Sin(Phi)
scoreboard players operation @s glib.var0 = @s glib.var8
function glib:math/sin
scoreboard players operation @s glib.var6 = @s glib.res0

### DEBUG
execute if entity @a[tag=glib.debug,tag=glib.debug.entity.local_vector.get_from_relative_vector,tag=!Glib_Menu] run function glib:utils/debug/entity/local_vectors/convert_from_vectors/2
### END DEBUG


# Vector Left
scoreboard players operation @s glib.var0 = @s VectorX
scoreboard players operation @s glib.var0 *= @s glib.var3
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s glib.var0 *= Neg glib.const
scoreboard players operation @s VectorLeft = @s glib.var0

scoreboard players operation @s glib.var0 = @s VectorZ
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s VectorLeft -= @s glib.var0

# Vector Up
scoreboard players operation @s glib.var0 = @s VectorY
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s VectorUp = @s glib.var0

scoreboard players operation @s glib.var0 = @s VectorZ
scoreboard players operation @s glib.var0 *= @s glib.var6
scoreboard players operation @s glib.var0 *= @s glib.var3
scoreboard players operation @s glib.var0 /= 1000000 glib.const
scoreboard players operation @s VectorUp += @s glib.var0

scoreboard players operation @s glib.var0 = @s VectorX
scoreboard players operation @s glib.var0 *= @s glib.var6
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000000 glib.const
scoreboard players operation @s VectorUp -= @s glib.var0

# Vector Front
scoreboard players operation @s glib.var0 = @s VectorZ
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 *= @s glib.var3
scoreboard players operation @s glib.var0 /= 1000000 glib.const
scoreboard players operation @s VectorFront = @s glib.var0

scoreboard players operation @s glib.var0 = @s VectorX
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 *= @s glib.var4
scoreboard players operation @s glib.var0 /= 1000000 glib.const
scoreboard players operation @s VectorFront -= @s glib.var0

scoreboard players operation @s glib.var0 = @s VectorY
scoreboard players operation @s glib.var0 *= @s glib.var6
scoreboard players operation @s glib.var0 /= 1000 glib.const
scoreboard players operation @s VectorFront -= @s glib.var0

scoreboard players set @s VectorSpeed 1000

### DEBUG
execute if entity @a[tag=glib.debug,tag=glib.debug.entity.local_vector.get_from_relative_vector,tag=!Glib_Menu] run function glib:utils/debug/entity/local_vectors/convert_from_vectors/3
### END DEBUG
