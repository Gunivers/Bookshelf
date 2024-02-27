# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.1
# Created: ??/??/???? (1.18.2)
# Last modification: 20/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#add-remove
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# level 1111129 => max_points = 10000002
$execute store result storage bs:ctx x int 1 store result score #xp.add_progress bs.data run data get storage bs:const xp.progress $(progress)
execute store result storage bs:ctx y int 1 run xp query @s levels
xp set @s 1111129 levels
execute store result score #xp.add_progress.points bs.data run xp query @s points
scoreboard players operation #xp.add_progress bs.data += #xp.add_progress.points bs.data
execute if score #xp.add_progress bs.data matches ..0 run xp set @s 0 points
execute if score #xp.add_progress bs.data matches 10000002.. run xp set @s 10000002 points
execute if score #xp.add_progress bs.data matches 1..10000001 run function bs.xp:add/progress/apply with storage bs:ctx
function bs.xp:utils/restore_levels with storage bs:ctx
