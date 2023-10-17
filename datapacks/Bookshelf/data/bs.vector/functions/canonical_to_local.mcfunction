#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.vector:classic/get_from_local_vector
# Documentation: https://bs-core.readthedocs.io//entity#vector
# Parallelizable: <true/false/global>
# Note:

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

scoreboard players operation azdazd bs.in

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation #vector.caninical_to_local.backup.var0 bs.data = @s bs.in.0
scoreboard players operation #vector.caninical_to_local.backup.var1 bs.data = @s bs.in.1
scoreboard players operation #vector.caninical_to_local.backup.var2 bs.data = @s bs.in.2
scoreboard players operation #vector.caninical_to_local.backup.var3 bs.data = @s bs.in.3
scoreboard players operation #vector.caninical_to_local.backup.var4 bs.data = @s bs.in.4
scoreboard players operation #vector.caninical_to_local.backup.out.0 bs.data = @s bs.out.0
scoreboard players operation #vector.caninical_to_local.backup.out.1 bs.data = @s bs.out.1
scoreboard players operation #vector.caninical_to_local.backup.out.2 bs.data = @s bs.out.2
scoreboard players operation #vector.caninical_to_local.backup.oriH bs.data = @s bs.ori.h
scoreboard players operation #vector.caninical_to_local.backup.oriV bs.data = @s bs.ori.v

# Calcul
scoreboard players operation @s bs.in.0 = @s bs.vector.x
scoreboard players operation @s bs.in.1 = @s bs.vector.y
scoreboard players operation @s bs.in.2 = @s bs.vector.z

execute at @s run function bs.orientation:get
scoreboard players operation @s bs.in.3 = @s bs.ori.h
scoreboard players operation @s bs.in.4 = @s bs.ori.v

function bs.math:basis_rotation_3d

scoreboard players operation @s bs.vector.x = @s bs.out.0
scoreboard players operation @s bs.vector.y = @s bs.out.1
scoreboard players operation @s bs.vector.z = @s bs.out.2

# Restore
scoreboard players operation @s bs.in.0 = #vector.caninical_to_local.backup.var0 bs.data
scoreboard players operation @s bs.in.1 = #vector.caninical_to_local.backup.var1 bs.data
scoreboard players operation @s bs.in.2 = #vector.caninical_to_local.backup.var2 bs.data
scoreboard players operation @s bs.in.3 = #vector.caninical_to_local.backup.var3 bs.data
scoreboard players operation @s bs.in.4 = #vector.caninical_to_local.backup.var4 bs.data
scoreboard players operation @s bs.out.0 = #vector.caninical_to_local.backup.out.0 bs.data
scoreboard players operation @s bs.out.1 = #vector.caninical_to_local.backup.out.1 bs.data
scoreboard players operation @s bs.out.2 = #vector.caninical_to_local.backup.out.2 bs.data
scoreboard players operation @s bs.ori.h = #vector.caninical_to_local.backup.oriH bs.data
scoreboard players operation @s bs.ori.v = #vector.caninical_to_local.backup.oriV bs.data
