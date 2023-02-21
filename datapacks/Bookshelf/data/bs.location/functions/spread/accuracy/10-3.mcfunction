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
#bs.in.3: CenterX
#bs.in.4: CenterZ 
#bs.in.4: Radius
#__________________________________________________
# INIT










#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
scoreboard players operation @s bs.in.6 = @s bs.in.4
scoreboard players operation @s bs.in.6 *= 2 bs.const
scoreboard players operation @s bs.in.6 += 1 bs.const

#Random
function bs.math:random
scoreboard players operation @s bs.out.0 %= @s bs.in.6 

scoreboard players set @s bs.in.0 0
execute if score @s bs.out.0 > @s bs.in.4 run scoreboard players operation @s bs.in.0 -= @s bs.out.0
execute if score @s bs.out.0 > @s bs.in.4 run scoreboard players operation @s bs.in.0 /= 2 bs.const
execute if score @s bs.out.0 <= @s bs.in.4 run scoreboard players operation @s bs.in.0 = @s bs.out.0

scoreboard players operation @s bs.in.0 += @s bs.in.3

#Random
function bs.math:random
scoreboard players operation @s bs.out.0 %= @s bs.in.6 

scoreboard players set @s bs.in.2 0
execute if score @s bs.out.0 > @s bs.in.4 run scoreboard players operation @s bs.in.2 -= @s bs.out.0
execute if score @s bs.out.0 > @s bs.in.4 run scoreboard players operation @s bs.in.2 /= 2 bs.const
execute if score @s bs.out.0 <= @s bs.in.4 run scoreboard players operation @s bs.in.2 = @s bs.out.0

scoreboard players operation @s bs.in.2 += @s bs.in.4

execute store result score @s bs.in.1 run data get entity @s Pos[1] 1

function bs.location:set/accuracy/10-3

