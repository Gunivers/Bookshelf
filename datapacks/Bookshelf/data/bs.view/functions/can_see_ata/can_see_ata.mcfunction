# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.13)
# Last modification: 09/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#can-see-as-to-at
# Dependencies:
# - bs.bitwise
# - bs.position
# Note:

# CODE ------------------------------------------------------------------------

function #bs.position:get_distance_ata {scale:1000}
scoreboard players operation #view.raycast.max_distance bs.data = $position.get_distance_ata bs.out
scoreboard players set #view.raycast.target_entities bs.data 0
scoreboard players set #view.can_see_ata.obstructed bs.data 0
data modify storage bs:data view.raycast.run set value "scoreboard players set #view.can_see_ata.obstructed bs.data 1"
execute facing entity @s eyes run function bs.view:raycast/raycast
execute if score #view.can_see_ata.obstructed bs.data matches 0 run function bs.view:can_see_ata/run with storage bs:in view.can_see_ata
