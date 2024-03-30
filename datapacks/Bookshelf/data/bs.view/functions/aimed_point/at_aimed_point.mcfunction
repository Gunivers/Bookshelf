# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 25/01/2024 (1.20.4)
# Last modification: 30/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/view.html#aimed-point
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# run the raycast at the entity eyes
execute at @s anchored eyes positioned ^ ^ ^ run function bs.raycast:runner/run

# run the command at the hit point that was found or return early
execute if score #raycast.distance bs.data matches 2147483647 run return fail
tp B5-0-0-0-1 @s
data modify entity B5-0-0-0-1 Pos set from storage bs:out raycast.hit_point
$execute at B5-0-0-0-1 run $(run)
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600
