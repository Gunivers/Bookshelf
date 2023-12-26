# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 30/11/2023 (1.20.3)
# Last modification: 30/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-block
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $raycast.block_collision bs.in >< #view.at_aimed_block.block_collision bs.data
scoreboard players operation $raycast.entity_collision bs.in >< #view.at_aimed_block.entity_collision bs.data
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run
scoreboard players operation $raycast.block_collision bs.in >< #view.at_aimed_block.block_collision bs.data
scoreboard players operation $raycast.entity_collision bs.in >< #view.at_aimed_block.entity_collision bs.data
execute if score #raycast.distance bs.data matches 2147483647 run return 0
data modify entity B5-0-0-0-1 Pos set from storage bs:out raycast.targeted_block
$execute at B5-0-0-0-1 run $(run)
execute in minecraft:overworld run tp B5-0-0-0-1 0 0 0
