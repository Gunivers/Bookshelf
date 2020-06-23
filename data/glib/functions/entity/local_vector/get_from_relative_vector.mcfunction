#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/local-vector/get_from_relative_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#local-vector
# Note:

#__________________________________________________
# PARAMETERS

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

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy
scoreboard objectives add glib.var9 dummy

scoreboard objectives add glib.res dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.var8 run data get entity @s Rotation[0] 1
execute store result score @s glib.var9 run data get entity @s Rotation[1] 1

scoreboard players operation @s VectorSpeedLocal = @s VectorSpeed

### DEBUG
execute if entity @a[tag=glib.debug,tag=glib.debug.entity.local_vector.get_from_relative_vector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/local_vectors/convert_from_vectors/1
### END DEBUG

# Cos(Theta)
scoreboard players operation @s glib.var = @s glib.var8
function glib:math/cos
scoreboard players operation @s glib.var4 = @s glib.res

# Sin(Theta)
scoreboard players operation @s glib.var = @s glib.var8
function glib:math/sin
scoreboard players operation @s glib.var5 = @s glib.res

# Cos(Phi)
scoreboard players operation @s glib.var = @s glib.var9
function glib:math/cos
scoreboard players operation @s glib.var5 = @s glib.res

# Sin(Phi)
scoreboard players operation @s glib.var = @s glib.var9
function glib:math/sin
scoreboard players operation @s glib.var7 = @s glib.res

### DEBUG
execute if entity @a[tag=glib.debug,tag=glib.debug.entity.local_vector.get_from_relative_vector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/local_vectors/convert_from_vectors/2
### END DEBUG


# Vector Left
scoreboard players operation @s glib.var = @s VectorX
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s glib.var *= Neg glib.const
scoreboard players operation @s VectorLeft = @s glib.var

scoreboard players operation @s glib.var = @s VectorZ
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s VectorLeft -= @s glib.var

# Vector Up
scoreboard players operation @s glib.var = @s VectorY
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s VectorUp = @s glib.var

scoreboard players operation @s glib.var = @s VectorZ
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000000 glib.const
scoreboard players operation @s VectorUp += @s glib.var

scoreboard players operation @s glib.var = @s VectorX
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000000 glib.const
scoreboard players operation @s VectorUp -= @s glib.var

# Vector Front
scoreboard players operation @s glib.var = @s VectorZ
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var *= @s glib.var4
scoreboard players operation @s glib.var /= 1000000 glib.const
scoreboard players operation @s VectorFront = @s glib.var

scoreboard players operation @s glib.var = @s VectorX
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var *= @s glib.var5
scoreboard players operation @s glib.var /= 1000000 glib.const
scoreboard players operation @s VectorFront -= @s glib.var

scoreboard players operation @s glib.var = @s VectorY
scoreboard players operation @s glib.var *= @s glib.var7
scoreboard players operation @s glib.var /= 1000 glib.const
scoreboard players operation @s VectorFront -= @s glib.var

scoreboard players set @s VectorSpeed 1000

### DEBUG
execute if entity @a[tag=glib.debug,tag=glib.debug.entity.local_vector.get_from_relative_vector,tag=!Glib_Menu] run function glib:core/utils/debug/entity/local_vectors/convert_from_vectors/3
### END DEBUG
