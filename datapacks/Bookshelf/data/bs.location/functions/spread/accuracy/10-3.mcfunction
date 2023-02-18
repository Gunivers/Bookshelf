#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: A2va
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:spread
# Documentation: https://bs-core.readthedocs.io//entity
# Parallelizable: <true/false/global>
# Note: Spread an entity based on CenterX, CenterZ and Radius scores

#__________________________________________________
# PARAMETERS
#bs.var3: CenterX
#bs.var4: CenterZ 
#bs.var4: Radius
#__________________________________________________
# INIT










#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s bs.var6 = @s bs.var4
scoreboard players operation @s bs.var6 *= 2 bs.const
scoreboard players operation @s bs.var6 += 1 bs.const

#Random
function bs.math:random
scoreboard players operation @s bs.res0 %= @s bs.var6 

scoreboard players set @s bs.var0 0
execute if score @s bs.res0 > @s bs.var4 run scoreboard players operation @s bs.var0 -= @s bs.res0
execute if score @s bs.res0 > @s bs.var4 run scoreboard players operation @s bs.var0 /= 2 bs.const
execute if score @s bs.res0 <= @s bs.var4 run scoreboard players operation @s bs.var0 = @s bs.res0

scoreboard players operation @s bs.var0 += @s bs.var3

#Random
function bs.math:random
scoreboard players operation @s bs.res0 %= @s bs.var6 

scoreboard players set @s bs.var2 0
execute if score @s bs.res0 > @s bs.var4 run scoreboard players operation @s bs.var2 -= @s bs.res0
execute if score @s bs.res0 > @s bs.var4 run scoreboard players operation @s bs.var2 /= 2 bs.const
execute if score @s bs.res0 <= @s bs.var4 run scoreboard players operation @s bs.var2 = @s bs.res0

scoreboard players operation @s bs.var2 += @s bs.var4

execute store result score @s bs.var1 run data get entity @s Pos[1] 1

function bs.location:set/accuracy/10-3

