#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_distance_ata
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

scoreboard players operation location.getDistance.var0 bs = @s bs.in.0

function bs.location:get_distance_squared_ata
scoreboard players operation @s bs.in.0 = @s bs.out.0
function bs.math:sqrt

scoreboard players operation @s bs.in.0 = location.getDistance.var0 bs
