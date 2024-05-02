# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 25/12/2023 (1.20.4)
# Last modification: 19/04/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/move.html#local-to-canonical
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result storage bs:ctx x int 1 run scoreboard players get @s bs.vel.x
execute store result storage bs:ctx y int 1 run scoreboard players get @s bs.vel.y
execute store result storage bs:ctx z int 1 run scoreboard players get @s bs.vel.z

execute as B5-0-0-0-1 run function bs.move:convert/local_to_canonical/compute with storage bs:ctx

execute store result score @s bs.vel.x run data get storage bs:ctx _[0]
execute store result score @s bs.vel.y run data get storage bs:ctx _[1]
execute store result score @s bs.vel.z run data get storage bs:ctx _[2]
