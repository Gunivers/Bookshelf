# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 15/09/2023 (1.20.2)
# Last modification: 15/09/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#set
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute if entity @s[type=!minecraft:player] run return -1
execute unless score #health.set_max_health.check bs.data = $health.set_max_health.points bs.in store result storage bs:in health.set_max_health.points double 1 run scoreboard players operation #health.set_max_health.check bs.data = $health.set_max_health.points bs.in
execute store result score @s bs.health.max run data get storage bs:in health.set_max_health.points 100000
execute store result score #health.max bs.data run attribute @s minecraft:generic.max_health get 100000
scoreboard players operation @s bs.health.max -= #health.max bs.data
