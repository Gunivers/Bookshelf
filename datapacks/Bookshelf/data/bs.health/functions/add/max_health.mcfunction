# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 15/09/2023 (1.20.2)
# Last modification: 23/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/health.html##add-remove
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:_ points set value $(points)
execute store result score #health bs.data run data get storage bs:_ points 100000
scoreboard players operation @s bs.health.max += #health bs.data
