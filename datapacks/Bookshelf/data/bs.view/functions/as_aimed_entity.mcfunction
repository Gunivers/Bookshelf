# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 30/11/2023 (1.20.3)
# Last modification: 30/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-entity
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $raycast.block_collision bs.in >< #view.as_aimed_entity.block_collision bs.data
scoreboard players operation $raycast.entity_collision bs.in >< #view.as_aimed_entity.entity_collision bs.data
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run
scoreboard players operation $raycast.block_collision bs.in >< #view.as_aimed_entity.block_collision bs.data
scoreboard players operation $raycast.entity_collision bs.in >< #view.as_aimed_entity.entity_collision bs.data
execute unless data storage bs:out raycast.targeted_entity run return 0
summon minecraft:area_effect_cloud 0.0 0.0 0.0 {UUID:[I;181,0,0,0]}
data modify entity B5-0-0-0-0 Owner set from storage bs:out raycast.targeted_entity
$execute as B5-0-0-0-0 on origin run $(run)
kill B5-0-0-0-0
