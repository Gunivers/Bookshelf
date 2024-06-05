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

execute store result score $xp.get_total_points bs.out run xp query @s points
execute store result score #xp.get_total_points.x bs.data store result score #xp.get_total_points.x2 bs.data run xp query @s levels
execute if score #xp.get_total_points.x bs.data matches 1..16 run return run function bs.xp:get/total_points/range_1
execute if score #xp.get_total_points.x bs.data matches 17..31 run return run function bs.xp:get/total_points/range_2
execute if score #xp.get_total_points.x bs.data matches 32.. run return run function bs.xp:get/total_points/range_3
