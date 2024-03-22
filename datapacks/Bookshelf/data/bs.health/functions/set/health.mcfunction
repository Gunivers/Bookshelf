# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 15/09/2023 (1.20.2)
# Last modification: 21/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#set
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result score @s bs.health.x run data get storage bs:const health.point $(points)
execute if entity @s[tag=!bs.health.break] store result score #health bs.data run data get entity @s Health 100000
execute if entity @s[tag=bs.health.break] store result score #health bs.data run attribute @s minecraft:generic.max_health get 100000
scoreboard players operation @s bs.health.x -= #health bs.data
execute if score @s bs.health.x matches 0 run scoreboard players reset @s bs.health.x
