# INFO ------------------------------------------------------------------------
# Copyright :copyright: 2023 Gunivers Community.

# Authors       : A2va
# Contributors  : 
# - Leirof

# Version: 2.0
# Created: 05/03/2023 (1.19.4)
# Last verification: 11/03/2023 (1.19.4)
# Last modification: 11/03/2023 (1.19.4)

# Original path : bs.location:spread
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#spread
# Note          : Spread an entity based on CenterX, CenterZ and Radius scores

# INIT ------------------------------------------------------------------------

# CONFIG ----------------------------------------------------------------------

# CODE ------------------------------------------------------------------------

scoreboard players operation #location.spread.backup.out.0 bs.data = @s bs.out.0

scoreboard players operation #location.spread.x bs.data = @s bs.in.0
scoreboard players operation #location.spread.z bs.data = @s bs.in.1

# From radius to diameter
scoreboard players operation #location.spread.radius bs.data = @s bs.in.2 
scoreboard players operation #location.spread.radius bs.data *= 2 bs.const
scoreboard players operation #location.spread.radius bs.data += 1000 bs.const

# Random
function bs.math:special/random
scoreboard players operation @s bs.out.0 %= #location.spread.radius bs.data
scoreboard players operation @s bs.out.0 -= @s bs.in.2

# Compute coord on x axis
scoreboard players operation @s bs.loc.x = #location.spread.x bs.data
scoreboard players operation @s bs.loc.x += @s bs.out.0

#Random
function bs.math:special/random
scoreboard players operation @s bs.out.0 %= #location.spread.radius bs.data
scoreboard players operation @s bs.out.0 -= @s bs.in.2

# Compute coord on x axis
scoreboard players operation @s bs.loc.z = #location.spread.z bs.data
scoreboard players operation @s bs.loc.z += @s bs.out.0

execute at @s run function bs.location:get_y/accuracy/10-3

# Tp, then tp again over the world surface and block centered
function bs.location:set/accuracy/10-3
execute at @s positioned over world_surface run tp ~ ~ ~

scoreboard players operation @s bs.out.0 = #location.spread.backup.out.0 bs.data