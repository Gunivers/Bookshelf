# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.1
# Created: ??/??/???? (1.13)
# Last modification: 30/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#can-see-as-to-at
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:data view.raycast set from storage bs:in raycast
data modify storage bs:in raycast merge value {block_collision:true,entity_collision:false}
data modify storage bs:in raycast.ignored_blocks set from storage bs:in view.can_see_ata.ignored_blocks
execute store result storage bs:in raycast.max_distance double 0.001 run function #bs.position:get_distance_ata {scale:1000}
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run
data modify storage bs:in raycast set from storage bs:data view.raycast
execute if score #raycast.distance bs.data matches 2147483647 run return 1
