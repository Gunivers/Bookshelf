# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.0
# Created: ??/??/???? (1.13)
# Last verification: ??/??/???? (1.13)
# Last modification: ??/??/???? (1.13)

# Original path : bs.vector:canonical_to_local
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/vector.html#convert-canonical-to-local-vector
# Note          :

# CODE ------------------------------------------------------------------------

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
