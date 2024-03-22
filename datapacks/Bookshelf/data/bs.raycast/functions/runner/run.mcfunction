# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.3
# Created: 09/10/2023 (1.20.2)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/raycast.html
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

tag @s add bs.raycast.origin
execute as B5-0-0-0-1 run function bs.raycast:runner/as
tag @s remove bs.raycast.origin

# return 0 early if no collision occured or compute output data then return 1
execute if score #raycast.distance bs.data matches 2147483647 run return 0
scoreboard players operation #raycast.ux bs.data *= #raycast.distance bs.data
scoreboard players operation #raycast.uy bs.data *= #raycast.distance bs.data
scoreboard players operation #raycast.uz bs.data *= #raycast.distance bs.data
scoreboard players operation #raycast.ux bs.data /= 1000 bs.const
scoreboard players operation #raycast.uy bs.data /= 1000 bs.const
scoreboard players operation #raycast.uz bs.data /= 1000 bs.const
execute store result storage bs:out raycast.hit_point[0] double .001 run scoreboard players operation #raycast.x bs.data += #raycast.ux bs.data
execute store result storage bs:out raycast.hit_point[1] double .001 run scoreboard players operation #raycast.y bs.data += #raycast.uy bs.data
execute store result storage bs:out raycast.hit_point[2] double .001 run scoreboard players operation #raycast.z bs.data += #raycast.uz bs.data
execute store result storage bs:out raycast.distance double .001 run scoreboard players get #raycast.distance bs.data
return 1
