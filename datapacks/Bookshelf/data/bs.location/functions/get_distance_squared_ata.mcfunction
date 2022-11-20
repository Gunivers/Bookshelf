#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_distance_squared_ata
# Parallelizable: true
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation location.getDistance.locX bs = @s bs.locX
scoreboard players operation location.getDistance.locY bs = @s bs.locY
scoreboard players operation location.getDistance.locZ bs = @s bs.locZ

function bs.location:get_relative_ata

scoreboard players operation @s bs.locX *= @s bs.locX
scoreboard players operation @s bs.locY *= @s bs.locY
scoreboard players operation @s bs.locZ *= @s bs.locZ

scoreboard players operation @s bs.res0 = @s bs.locX
scoreboard players operation @s bs.res0 += @s bs.locY
scoreboard players operation @s bs.res0 += @s bs.locZ

# Restore
scoreboard players operation @s bs.locX = location.getDistance.locX bs
scoreboard players operation @s bs.locY = location.getDistance.locY bs
scoreboard players operation @s bs.locZ = location.getDistance.locZ bs
