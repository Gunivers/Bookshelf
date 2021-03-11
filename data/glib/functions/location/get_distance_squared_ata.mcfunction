#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/get_distance_squared_ata
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
scoreboard players operation location.getDistance.locX glib = @s glib.locX
scoreboard players operation location.getDistance.locY glib = @s glib.locY
scoreboard players operation location.getDistance.locZ glib = @s glib.locZ

function glib:location/get_relative_ata

scoreboard players operation @s glib.locX *= @s glib.locX
scoreboard players operation @s glib.locY *= @s glib.locY
scoreboard players operation @s glib.locZ *= @s glib.locZ

scoreboard players operation @s glib.res0 = @s glib.locX
scoreboard players operation @s glib.res0 += @s glib.locY
scoreboard players operation @s glib.res0 += @s glib.locZ

# Restore
scoreboard players operation @s glib.locX = location.getDistance.locX glib
scoreboard players operation @s glib.locY = location.getDistance.locY glib
scoreboard players operation @s glib.locZ = location.getDistance.locZ glib
