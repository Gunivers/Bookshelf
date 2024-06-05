# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.1
# Created: ??/??/???? (1.18.2)
# Last modification: 08/03/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#set
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# level 111111129 => max_points = 1000000002
$execute store result storage bs:ctx x int 1 store result score #xp.set_progress bs.data run data get storage bs:const xp.progress $(progress)
execute store result storage bs:ctx y int 1 run xp query @s levels
xp set @s 111111129 levels
execute if score #xp.set_progress bs.data matches 1000000000.. run xp set @s 1000000000 points
execute if score #xp.set_progress bs.data matches 1..999999999 run function bs.xp:set/progress/apply with storage bs:ctx
function bs.xp:utils/restore_levels with storage bs:ctx
