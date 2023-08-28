# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Leirof, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.18.2)
# Last modification: 28/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#get
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score $xp.get_remaining_points bs.out run function #bs.xp:get_max_points
execute store result score #xp.get_remaining_points.points bs.data run xp query @s points

execute store result storage bs:out xp.get_remaining_points int 1 run return run scoreboard players operation $xp.get_remaining_points bs.out -= #xp.get_remaining_points.points bs.data
