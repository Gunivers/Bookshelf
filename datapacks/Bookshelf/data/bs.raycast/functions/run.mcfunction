# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.4
# Created: 09/10/2023 (1.20.2)
# Last modification: 02/04/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/raycast.html
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

tag @s add bs.raycast.omit
scoreboard players set #raycast.distance bs.data 2147483647
execute store result score #raycast.max_distance bs.data store result score #raycast.limit bs.data run data get storage bs:data raycast.max_distance 1000
data modify storage bs:out raycast set value {distance:0d}
execute as B5-0-0-0-1 run function bs.raycast:recurse/init
tag @e[tag=bs.raycast.omit] remove bs.raycast.omit

# return 0 early if no collision occured or compute output data then return 1
execute if score #raycast.distance bs.data matches 2147483647 run return 0
execute store result storage bs:out raycast.distance double .001 run scoreboard players get #raycast.distance bs.data
execute as B5-0-0-0-1 run function bs.raycast:compute/hit_point with storage bs:out raycast
return 1
