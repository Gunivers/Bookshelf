#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:entity/vector/from_local_vector
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

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy
scoreboard objectives add Var4 dummy
scoreboard objectives add Var5 dummy
scoreboard objectives add Var6 dummy
scoreboard objectives add Var7 dummy
scoreboard objectives add Var8 dummy
scoreboard objectives add Var9 dummy

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

execute store result score @s Var8 run data get entity @s Rotation[0] 1
execute store result score @s Var9 run data get entity @s Rotation[1] 1

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"-=[Debug Entity/Local_Vectors/Convert_From_Vector]=-","color":"green"}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
tellraw @a[tag=Debug] ["",{"text":"INPUT -> ","color":"gray"},{"text":"Theta: ","color":"red"},{"score":{"name":"@s","objective":"Var8"}},{"text":".   Phi: ","color":"red"},{"score":{"name":"@s","objective":"Var9"}}]
### END DEBUG

# Cos(Theta)
scoreboard players operation @s Var1 = @s Var8
function glib:math/cos
scoreboard players operation @s Var4 = @s Res1

# Sin(Theta)
scoreboard players operation @s Var1 = @s Var8
function glib:math/sin
scoreboard players operation @s Var5 = @s Res1

# Cos(Phi)
scoreboard players operation @s Var1 = @s Var9
function glib:math/cos
scoreboard players operation @s Var6 = @s Res1

# Sin(Phi)
scoreboard players operation @s Var1 = @s Var9
function glib:math/sin
scoreboard players operation @s Var7 = @s Res1

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"CALC -> ","color":"gray"},{"text":"Cos(Theta): ","color":"red"},{"score":{"name":"@s","objective":"Var4"}},{"text":".   Sin(Theta): ","color":"red"},{"score":{"name":"@s","objective":"Var5"}},{"text":".   Cos(Phi): ","color":"red"},{"score":{"name":"@s","objective":"Var6"}},{"text":".   Sin(Phi): ","color":"red"},{"score":{"name":"@s","objective":"Var7"}}]
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

scoreboard players operation @s VectorSpeed = @s VectorSpeedLocal

### DEBUG
tellraw @a[tag=Debug] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"Left: ","color":"red"},{"score":{"name":"@s","objective":"VectorLeft"}},{"text":".   Up: ","color":"red"},{"score":{"name":"@s","objective":"VectorUp"}},{"text":".   Front: ","color":"red"},{"score":{"name":"@s","objective":"VectorFront"}},{"text":".   Speed: ","color":"red"},{"score":{"name":"@s","objective":"VectorSpeed"}}]
### END DEBUG
