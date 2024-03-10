# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 30/11/2023 (1.20.3)
# Last modification: 30/11/2023 (1.20.3)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-block
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# run the raycast
data modify storage bs:data view.raycast set from storage bs:in raycast
data modify storage bs:in raycast merge value {block_collision:true,entity_collision:false}
execute at @s anchored eyes positioned ^ ^ ^ run function #bs.raycast:run
data modify storage bs:in raycast set from storage bs:data view.raycast

# run the command at the block that was found or return early
execute if score #raycast.distance bs.data matches 2147483647 run return 0
$data modify storage bs:ctx _ set value '$(run)'
data modify storage bs:ctx x set from storage bs:out raycast.targeted_block[0]
data modify storage bs:ctx y set from storage bs:out raycast.targeted_block[1]
data modify storage bs:ctx z set from storage bs:out raycast.targeted_block[2]
execute at @s run function bs.view:at/run with storage bs:ctx
