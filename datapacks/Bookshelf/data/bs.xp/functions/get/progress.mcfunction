# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.1
# Created: ??/??/???? (1.18.2)
# Last modification: 20/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#get
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

# level 1111129 => max_points = 10000002
execute store result storage bs:ctx y int 1 run xp query @s levels
xp set @s 1111129 levels
execute store result storage bs:ctx x double .000009999998 run xp query @s points
function bs.xp:utils/restore_levels with storage bs:ctx
$execute store result score $xp.get_progress bs.out run return run data get storage bs:ctx x $(scale)
