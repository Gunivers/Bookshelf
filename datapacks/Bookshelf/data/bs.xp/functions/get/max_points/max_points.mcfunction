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

execute store result score $xp.get_max_points bs.out run xp query @s levels
execute if score $xp.get_max_points bs.out matches 0..15 run return run function bs.xp:get/max_points/range_1
execute if score $xp.get_max_points bs.out matches 16..30 run return run function bs.xp:get/max_points/range_2
execute if score $xp.get_max_points bs.out matches 31.. run return run function bs.xp:get/max_points/range_3
