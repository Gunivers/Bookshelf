# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome, Leirof
# Contributors:

# Version: 2.1
# Created: ??/??/???? (1.18.2)
# Last modification: 20/11/2023 (23w46a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/xp.html#get
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

execute store result score $xp.get_remaining_points bs.out run function #bs.xp:get_max_points
execute store result score #xp.get_remaining_points bs.data run xp query @s points
return run scoreboard players operation $xp.get_remaining_points bs.out -= #xp.get_remaining_points bs.data
