#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: A2va
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:spread
# Parallelizable: true
# Note: Spread an entity based on CenterX, CenterZ and Radius scores

#__________________________________________________
# PARAMETERS

#bs.var0: CenterX
#bs.var1: CenterZ
#bs.var2: Radius

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation location.spread.locX bs = @s bs.locX
scoreboard players operation location.spread.locY bs = @s bs.locY
scoreboard players operation location.spread.locZ bs = @s bs.locZ

scoreboard players operation @s bs.var6 = @s bs.var2
scoreboard players operation @s bs.var6 *= 2 bs.const
scoreboard players operation @s bs.var6 += 1 bs.const

#Random
function bs.math:random
scoreboard players operation @s bs.res0 %= @s bs.var6

scoreboard players set @s bs.locX 0
execute if score @s bs.res0 > @s bs.var2 run scoreboard players operation @s bs.locX -= @s bs.res0
execute if score @s bs.res0 > @s bs.var2 run scoreboard players operation @s bs.locX /= 2 bs.const
execute if score @s bs.res0 <= @s bs.var2 run scoreboard players operation @s bs.locX = @s bs.res0

scoreboard players operation @s bs.locX += @s bs.var0

#Random
function bs.math:random
scoreboard players operation @s bs.res0 %= @s bs.var6

scoreboard players set @s bs.locZ 0
execute if score @s bs.res0 > @s bs.var2 run scoreboard players operation @s bs.locZ -= @s bs.res0
execute if score @s bs.res0 > @s bs.var2 run scoreboard players operation @s bs.locZ /= 2 bs.const
execute if score @s bs.res0 <= @s bs.var2 run scoreboard players operation @s bs.locZ = @s bs.res0

scoreboard players operation @s bs.locZ += @s bs.var1

execute store result score @s bs.locY run data get entity @s Pos[1] 1

function bs.location:set

# Restore
scoreboard players operation @s bs.locX = location.spread.locX bs
scoreboard players operation @s bs.locY = location.spread.locY bs
scoreboard players operation @s bs.locZ = location.spread.locZ bs
