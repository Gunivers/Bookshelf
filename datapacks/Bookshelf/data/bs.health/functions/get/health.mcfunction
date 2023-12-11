# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 23/10/2023 (1.20.2)
# Last modification: 21/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#get
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if entity @s[tag=!bs.health.break] store result score #health bs.data run data get entity @s Health 100000
execute if entity @s[tag=bs.health.break] store result score #health bs.data run attribute @s minecraft:generic.max_health get 100000
scoreboard players operation #health bs.data += @s bs.health.y
execute store result storage bs:out health.get_health double 0.00001 run scoreboard players get #health bs.data
$return run data get storage bs:out health.get_health $(scale)
