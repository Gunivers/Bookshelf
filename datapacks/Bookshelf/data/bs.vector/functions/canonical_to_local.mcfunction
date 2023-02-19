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

# Input: @s bs.var0 (score) : Local Vector Left
# Input: @s bs.var1 (score) : Local Vector Up
# Input: @s bs.var2 (score) : Local Vector Front
# Output: @s Res0 (score) : Vector X
# Output: @s Res1 (score) : Vector Y
# Output: @s Res2 (score) : Vector Z

#__________________________________________________
# INIT

scoreboard objectives add bs.vector.x dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector X","color":"aqua"}]
scoreboard objectives add bs.vector.y dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Y","color":"aqua"}]
scoreboard objectives add bs.vector.z dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Vector Z","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

# Backup
scoreboard players operation #vector.caninical_to_local.backup.var0 bs.data = @s bs.var0
scoreboard players operation #vector.caninical_to_local.backup.var1 bs.data = @s bs.var1
scoreboard players operation #vector.caninical_to_local.backup.var2 bs.data = @s bs.var2
scoreboard players operation #vector.caninical_to_local.backup.var3 bs.data = @s bs.var3
scoreboard players operation #vector.caninical_to_local.backup.var4 bs.data = @s bs.var4
scoreboard players operation #vector.caninical_to_local.backup.res0 bs.data = @s bs.res0
scoreboard players operation #vector.caninical_to_local.backup.res1 bs.data = @s bs.res1
scoreboard players operation #vector.caninical_to_local.backup.res2 bs.data = @s bs.res2
scoreboard players operation #vector.caninical_to_local.backup.oriH bs.data = @s bs.oriH
scoreboard players operation #vector.caninical_to_local.backup.oriV bs.data = @s bs.oriV

# Calcul
scoreboard players operation @s bs.var0 = @s bs.vector.x
scoreboard players operation @s bs.var1 = @s bs.vector.y
scoreboard players operation @s bs.var2 = @s bs.vector.z

execute at @s run function bs.orientation:get
scoreboard players operation @s bs.var3 = @s bs.oriH
scoreboard players operation @s bs.var4 = @s bs.oriV

function bs.math:algebra/basis_rotation_3d

scoreboard players operation @s bs.vector.x = @s bs.res0
scoreboard players operation @s bs.vector.y = @s bs.res1
scoreboard players operation @s bs.vector.z = @s bs.res2

# Restore
scoreboard players operation @s bs.var0 = #vector.caninical_to_local.backup.var0 bs.data
scoreboard players operation @s bs.var1 = #vector.caninical_to_local.backup.var1 bs.data
scoreboard players operation @s bs.var2 = #vector.caninical_to_local.backup.var2 bs.data
scoreboard players operation @s bs.var3 = #vector.caninical_to_local.backup.var3 bs.data
scoreboard players operation @s bs.var4 = #vector.caninical_to_local.backup.var4 bs.data
scoreboard players operation @s bs.res0 = #vector.caninical_to_local.backup.res0 bs.data
scoreboard players operation @s bs.res1 = #vector.caninical_to_local.backup.res1 bs.data
scoreboard players operation @s bs.res2 = #vector.caninical_to_local.backup.res2 bs.data
scoreboard players operation @s bs.oriH = #vector.caninical_to_local.backup.oriH bs.data
scoreboard players operation @s bs.oriV = #vector.caninical_to_local.backup.oriV bs.data
