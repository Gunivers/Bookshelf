# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 23/10/2023 (1.20.2)
# Last modification: 23/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#get
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score #health bs.data run attribute @s minecraft:generic.max_health get 100000
scoreboard players operation #health bs.data += @s bs.health.max
execute store result storage bs:out health.get_max_health double 0.00001 run scoreboard players get #health bs.data
$return run data get storage bs:out health.get_max_health $(scale)
