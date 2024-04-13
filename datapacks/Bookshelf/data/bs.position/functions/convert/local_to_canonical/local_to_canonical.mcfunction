# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 25/12/2023 (1.20.4)
# Last modification: 12/04/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/position.html#local-to-canonical
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result storage bs:ctx x int 1 run scoreboard players get @s bs.pos.x
execute store result storage bs:ctx y int 1 run scoreboard players get @s bs.pos.y
execute store result storage bs:ctx z int 1 run scoreboard players get @s bs.pos.z

execute as B5-0-0-0-1 run function bs.position:convert/local_to_canonical/compute with storage bs:ctx

execute store result score @s bs.pos.x run data get storage bs:ctx _[0]
execute store result score @s bs.pos.y run data get storage bs:ctx _[1]
execute store result score @s bs.pos.z run data get storage bs:ctx _[2]
