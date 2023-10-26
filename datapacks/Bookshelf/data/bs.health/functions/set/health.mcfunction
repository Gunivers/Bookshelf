# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 15/09/2023 (1.20.2)
# Last modification: 23/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#set
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(points)
execute store result score @s bs.health.points run data get storage bs:ctx _ 100000
execute if entity @s[tag=!bs.health.skip_tick] store result score #health bs.data run data get entity @s Health 100000
execute if entity @s[tag=bs.health.skip_tick] store result score #health bs.data run attribute @s minecraft:generic.max_health get 100000
scoreboard players operation @s bs.health.points -= #health bs.data
