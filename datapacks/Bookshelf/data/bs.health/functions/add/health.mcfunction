# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 15/09/2023 (1.20.2)
# Last modification: 21/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html##add-remove
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$execute store result score #health bs.data run data get storage bs:const health.point $(points)
scoreboard players operation @s bs.health.x += #health bs.data
execute if score @s bs.health.x matches 0 run scoreboard players reset @s bs.health.x
