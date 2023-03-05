#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: A2va
# Contributors:
# MC Version: 1.19.4
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

# Centering the entity introduces an one block offset
scoreboard players operation @s bs.in.4 = @s bs.in.0
scoreboard players operation @s bs.in.4 -= 1 bs.const

scoreboard players operation @s bs.in.5 = @s bs.in.1
scoreboard players operation @s bs.in.5 -= 1 bs.const

# From radius to diameter
scoreboard players operation @s bs.in.3 = @s bs.in.2 
scoreboard players operation @s bs.in.3 *= 2 bs.const
scoreboard players operation @s bs.in.3 += 1 bs.const

#Random
function bs.math:special/random
execute if score @s bs.in.2 <= 0 bs.const run scoreboard players set @s bs.out.0 0
execute if score @s bs.in.2 > 0 bs.const run scoreboard players operation @s bs.out.0 %= @s bs.in.3

# Compute coord on X axis
scoreboard players set @s bs.loc.x 0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.x -= @s bs.out.0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.x /= 2 bs.const
execute if score @s bs.out.0 <= @s bs.in.2 run scoreboard players operation @s bs.loc.x = @s bs.out.0

# Use center x with fixed offset
scoreboard players operation @s bs.loc.x += @s bs.in.4

#Random
function bs.math:special/random
execute if score @s bs.in.2 <= 0 bs.const run scoreboard players set @s bs.out.0 0
execute if score @s bs.in.2 > 0 bs.const run scoreboard players operation @s bs.out.0 %= @s bs.in.3

# Compute coord on Z axis
scoreboard players set @s bs.loc.z 0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.z -= @s bs.out.0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.z /= 2 bs.const
execute if score @s bs.out.0 <= @s bs.in.2 run scoreboard players operation @s bs.loc.z = @s bs.out.0

scoreboard players operation @s bs.loc.z += @s bs.in.5

execute store result score @s bs.loc.y run data get entity @s Pos[1] 1

# Tp, then tp again over the world surface and block centered
function bs.location:set
execute at @s positioned over world_surface align xz run tp ~0.5 ~ ~0.5