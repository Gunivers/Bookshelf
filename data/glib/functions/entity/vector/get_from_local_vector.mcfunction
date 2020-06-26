#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/vector/get_from_local_vector
# Documentation: https://project.gunivers.net/projects/gunivers-lib/wiki/entity#vector
# Parallelizable: <true/false/global>
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

scoreboard objectives add glib.var0 dummy
scoreboard objectives add glib.var1 dummy
scoreboard objectives add glib.var2 dummy
scoreboard objectives add glib.var3 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var4 dummy
scoreboard objectives add glib.var6 dummy
scoreboard objectives add glib.var7 dummy
scoreboard objectives add glib.var8 dummy

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

execute store result score @s glib.var7 run data get entity @s Rotation[0] 1
execute store result score @s glib.var8 run data get entity @s Rotation[1] 1

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Local_Vectors/Convert_From_Vector]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Theta: ","color":"red"},{"score":{"name":"@s","objective":"glib.var7"}},{"text":".   Phi: ","color":"red"},{"score":{"name":"@s","objective":"glib.var8"}}]
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
tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"Cos(Theta): ","color":"red"},{"score":{"name":"@s","objective":"glib.var3"}},{"text":".   Sin(Theta): ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Cos(Phi): ","color":"red"},{"score":{"name":"@s","objective":"glib.var4"}},{"text":".   Sin(Phi): ","color":"red"},{"score":{"name":"@s","objective":"glib.var6"}}]
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

scoreboard players operation @s VectorSpeed = @s VectorSpeedLocal

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Left: ","color":"red"},{"score":{"name":"@s","objective":"VectorLeft"}},{"text":".   Up: ","color":"red"},{"score":{"name":"@s","objective":"VectorUp"}},{"text":".   Front: ","color":"red"},{"score":{"name":"@s","objective":"VectorFront"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
