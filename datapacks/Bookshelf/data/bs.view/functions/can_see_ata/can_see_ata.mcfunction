# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.2
# Created: ??/??/???? (1.13)
# Last modification: 30/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#can-see-as-to-at
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

data modify storage bs:data raycast set value { \
  blocks: true, \
  entities: false, \
  ignored_blocks: "#bs.view:can_see_through", \
  ignored_entities: "#bs.hitbox:intangible", \
}

execute as B5-0-0-0-1 run function bs.view:can_see_ata/max_distance/at
execute store result score #view.can_see_ata.x2 bs.data run data get entity @s Pos[0] 1000
execute store result score #view.can_see_ata.y2 bs.data run data get entity @s Pos[1] 1000
execute store result score #view.can_see_ata.z2 bs.data run data get entity @s Pos[2] 1000
execute store result storage bs:ctx x int 1 run scoreboard players operation #view.can_see_ata.x1 bs.data -= #view.can_see_ata.x2 bs.data
execute store result storage bs:ctx y int 1 run scoreboard players operation #view.can_see_ata.y1 bs.data -= #view.can_see_ata.y2 bs.data
execute store result storage bs:ctx z int 1 run scoreboard players operation #view.can_see_ata.z1 bs.data -= #view.can_see_ata.z2 bs.data
function bs.view:can_see_ata/max_distance/compute with storage bs:ctx

execute facing entity @s eyes run function bs.raycast:run
execute if score #raycast.distance bs.data matches 2147483647 run return 1
