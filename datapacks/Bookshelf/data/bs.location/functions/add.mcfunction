
# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/?? (1.16.1)
# Last verification: 30/04/2023 (1.19.4)
# Last modification: 30/04/2023 (1.19.4)

# Original path : bs.location:add
# Documentation : https://bookshelf.docs.gunivers.net/en/latest/modules/location.html#add-up-coordinates
# Note          : It was excessively more impressive in 1.12...

# CODE ------------------------------------------------------------------------

# Backup
scoreboard players operation #backup.location.add.locX bs = @s bs.loc.x
scoreboard players operation #backup.location.add.locY bs = @s bs.loc.y
scoreboard players operation #backup.location.add.locZ bs = @s bs.loc.z

execute at @s run function bs.location:get

scoreboard players operation @s bs.loc.x += @s bs.loc.rx
scoreboard players operation @s bs.loc.y += @s bs.loc.ry
scoreboard players operation @s bs.loc.z += @s bs.loc.rz

function bs.location:set

# Restore
scoreboard players operation @s bs.loc.x = #backup.location.add.locX bs
scoreboard players operation @s bs.loc.y = #backup.location.add.locY bs
scoreboard players operation @s bs.loc.z = #backup.location.add.locZ bs
