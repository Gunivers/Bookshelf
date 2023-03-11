# INFO ------------------------------------------------------------------------
# Copyright :copyright: 2023 Gunivers Community.

# Authors       : A2va
# Contributors  : 
# - Leirof

# Version: 2.0
# Created: 05/03/2023 (1.19.4)
# Last verification: 05/03/2023 (1.19.4)
# Last modification: 05/03/2023 (1.19.4)

# Original path : bs.location:spread
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#spread
# Note          : Spread an entity based on CenterX, CenterZ and Radius scores

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #location.spread.backup.out.0 bs.data = @s bs.out.0

# Centering the entity introduces an one block offset
scoreboard players operation #location.spread.x bs.data = @s bs.in.0
scoreboard players operation #location.spread.x bs.data -= 1 bs.const

scoreboard players operation #location.spread.z bs.data = @s bs.in.1
scoreboard players operation #location.spread.z bs.data -= 1 bs.const

# From radius to diameter
scoreboard players operation #location.spread.radius bs.data = @s bs.in.2 
scoreboard players operation #location.spread.radius bs.data *= 2 bs.const
scoreboard players operation #location.spread.radius bs.data += 1 bs.const

#Random
function bs.math:special/random
execute if score @s bs.in.2 <= 0 bs.const run scoreboard players set @s bs.out.0 0
execute if score @s bs.in.2 > 0 bs.const run scoreboard players operation @s bs.out.0 %= #location.spread.radius bs.data

# Compute coord on X axis
scoreboard players set @s bs.loc.x 0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.x -= @s bs.out.0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.x /= 2 bs.const
execute if score @s bs.out.0 <= @s bs.in.2 run scoreboard players operation @s bs.loc.x = @s bs.out.0

# Use center x with fixed offset
scoreboard players operation @s bs.loc.x += #location.spread.x bs.data

#Random
function bs.math:special/random
execute if score @s bs.in.2 <= 0 bs.const run scoreboard players set @s bs.out.0 0
execute if score @s bs.in.2 > 0 bs.const run scoreboard players operation @s bs.out.0 %= #location.spread.radius bs.data

# Compute coord on Z axis
scoreboard players set @s bs.loc.z 0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.z -= @s bs.out.0
execute if score @s bs.out.0 > @s bs.in.2 run scoreboard players operation @s bs.loc.z /= 2 bs.const
execute if score @s bs.out.0 <= @s bs.in.2 run scoreboard players operation @s bs.loc.z = @s bs.out.0

scoreboard players operation @s bs.loc.z += #location.spread.z bs.data

execute at @s run function bs.location:get_y

scoreboard players add @s bs.loc.x 1
scoreboard players add @s bs.loc.z 1

# Tp, then tp again over the world surface and block centered
function bs.location:set
execute at @s positioned over world_surface align xz run tp ~0.5 ~ ~0.5

scoreboard players operation @s bs.out.0 = #location.spread.backup.out.0 bs.data