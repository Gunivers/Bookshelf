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

#bs.in.0: CenterX
#bs.in.1: CenterZ
#bs.in.2: Radius

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation location.spread.locX bs = @s bs.loc.x
scoreboard players operation location.spread.locY bs = @s bs.loc.y
scoreboard players operation location.spread.locZ bs = @s bs.loc.z

scoreboard players operation @s bs.in.6 = @s bs.in.2
scoreboard players operation @s bs.in.6 *= 2 bs.const
scoreboard players operation @s bs.in.6 += 1 bs.const

#Random
function bs.math:random
scoreboard players operation @s bs.out.0 %= @s bs.in.6

scoreboard players set @s bs.loc.x 0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.x -= @s bs.out.0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.x /= 2 bs.const
execute if score @s bs.out.0 <= @s bs.in.2 run scoreboard players operation @s bs.loc.x = @s bs.out.0

scoreboard players operation @s bs.loc.x += @s bs.in.0

#Random
function bs.math:random
scoreboard players operation @s bs.out.0 %= @s bs.in.6

scoreboard players set @s bs.loc.z 0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.z -= @s bs.out.0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.z /= 2 bs.const
execute if score @s bs.out.0 <= @s bs.in.2 run scoreboard players operation @s bs.loc.z = @s bs.out.0

scoreboard players operation @s bs.loc.z += @s bs.in.1

execute store result score @s bs.loc.y run data get entity @s Pos[1] 1

function bs.location:set

# Restore
scoreboard players operation @s bs.loc.x = location.spread.locX bs
scoreboard players operation @s bs.loc.y = location.spread.locY bs
scoreboard players operation @s bs.loc.z = location.spread.locZ bs
