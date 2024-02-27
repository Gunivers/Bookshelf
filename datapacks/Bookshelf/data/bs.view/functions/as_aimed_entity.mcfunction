# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 30/11/2023 (1.20.3)
# Last modification: 30/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-entity
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# run the raycast
data modify storage bs:data view.raycast set from storage bs:in raycast
data modify storage bs:in raycast merge value {block_collision:true,entity_collision:true}
execute at @s anchored eyes positioned ^ ^ ^ run function #bs.raycast:run
data modify storage bs:in raycast set from storage bs:data view.raycast

# run the command as the entity that was found or return early
execute unless data storage bs:out raycast.targeted_entity run return 0
data modify entity B5-0-0-0-4 Owner set from storage bs:out raycast.targeted_entity
$execute as B5-0-0-0-4 on origin run $(run)
