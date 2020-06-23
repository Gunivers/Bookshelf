#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/vector/get_from_local_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Note:

#__________________________________________________
# PARAMETERS

# Input: VectorX (score dummy)
# Input: VectorY (score dummy)
# Input: VectorZ (score dummy)
# Input: VectorSpeed (score dummy)

# Output: VectorLeft (score dummy)
# Output: VectorUp (score dummy)
# Output: VectorFront (score dummy)
# Output: VectorSpeedLocal (score dummy)

#__________________________________________________
# INIT

scoreboard objectives add glib.var dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var5 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy
scoreboard objectives add glib.var9 dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy
scoreboard objectives add VectorSpeed dummy

scoreboard objectives add VectorLeft dummy
scoreboard objectives add VectorUp dummy
scoreboard objectives add VectorFront dummy
scoreboard objectives add VectorSpeedLocal dummy

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute store result score @s glib.var8 run data get entity @s Rotation[0] 1
execute store result score @s glib.var9 run data get entity @s Rotation[1] 1

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Local_Vectors/Convert_From_Vector]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.var8"}},{"text":".   Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.var9"}}]
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
tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"Cos(Theta): ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Sin(Theta): ","color":"red"},{"score":{"name":"@s","objective":"glib.var5"}},{"text":".   Cos(Phi): ","color":"red"},{"score":{"name":"@s","objective":"glib.var5"}},{"text":".   Sin(Phi): ","color":"red"},{"score":{"name":"@s","objective":"glib.var7"}}]
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

scoreboard players operation @s VectorSpeed = @s VectorSpeedLocal

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Left: ","color":"red"},{"score":{"name":"@s","objective":"VectorLeft"}},{"text":".   Up: ","color":"red"},{"score":{"name":"@s","objective":"VectorUp"}},{"text":".   Front: ","color":"red"},{"score":{"name":"@s","objective":"VectorFront"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
