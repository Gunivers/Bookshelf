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

# level 1111129 => max_points = 10000003
execute store result storage bs:_ levels int 1 run xp query @s levels
xp set @s 1111129 levels
execute store result score $xp.get_progress bs.out run xp query @s points
function bs.xp:set/levels/macro with storage bs:_
scoreboard players reset #xp.use_macro bs.data
scoreboard players operation $xp.get_progress bs.out /= 100 bs.const
