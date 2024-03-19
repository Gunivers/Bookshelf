# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.2
# Created: 15/09/2023 (1.20.2)
# Last modification: 19/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html#set
# Dependencies:
# Note: Thanks to XanBelOr for giving the idea to use an advancement to subtick heal the player.

# CODE ------------------------------------------------------------------------

$execute store result score #health bs.data run data get storage bs:const health.point $(points)

execute store result score #health.max bs.data run attribute @s minecraft:generic.max_health get 100000
execute store result score #health.mod bs.data run attribute @s minecraft:generic.max_health modifier value get 68f0b501-5dca-4abb-8b69-057945a9583d 100000
scoreboard players operation #health.max bs.data -= #health.mod bs.data

execute store result score #health.points bs.data run data get entity @s Health 100000
execute store result storage bs:ctx x double -0.00001 run scoreboard players operation #health.max bs.data -= #health bs.data
execute if score #health.points bs.data > #health bs.data if score #health.max bs.data matches 0.. run return run function bs.health:apply/decrease_health with storage bs:ctx
execute if score #health.points bs.data < #health bs.data if score #health.max bs.data matches 0.. run return run function bs.health:apply/increase_health with storage bs:ctx
