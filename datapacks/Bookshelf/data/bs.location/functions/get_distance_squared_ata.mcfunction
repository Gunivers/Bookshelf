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
scoreboard players operation location.getDistance.locX bs = @s bs.loc.x
scoreboard players operation location.getDistance.locY bs = @s bs.loc.y
scoreboard players operation location.getDistance.locZ bs = @s bs.loc.z

function bs.location:get_relative_ata

scoreboard players operation @s bs.loc.x *= @s bs.loc.x
scoreboard players operation @s bs.loc.y *= @s bs.loc.y
scoreboard players operation @s bs.loc.z *= @s bs.loc.z

scoreboard players operation @s bs.out.0 = @s bs.loc.x
scoreboard players operation @s bs.out.0 += @s bs.loc.y
scoreboard players operation @s bs.out.0 += @s bs.loc.z

# Restore
scoreboard players operation @s bs.loc.x = location.getDistance.locX bs
scoreboard players operation @s bs.loc.y = location.getDistance.locY bs
scoreboard players operation @s bs.loc.z = location.getDistance.locZ bs
