#__________________________________________________
# INFO     Copyright © 2020 Gunivers.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: glib:location/get_distance_ata
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

scoreboard players operation location.getDistance.var0 glib = @s glib.var0

function glib:location/get_distance_squared_ata
scoreboard players operation @s glib.var0 = @s glib.res0
function glib:math/sqrt

scoreboard players operation @s glib.var0 = location.getDistance.var0 glib
