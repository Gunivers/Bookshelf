# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/???? (1.14)
# Last modification: 16/08/2023 (23w32a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#rgb-to-int
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $color.rgb_to_int bs.out = $color.rgb_to_int.color.0 bs.in
scoreboard players operation $color.rgb_to_int bs.out *= 65536 bs.const
scoreboard players operation #color.rgb_to_int bs.data = $color.rgb_to_int.color.1 bs.in
scoreboard players operation #color.rgb_to_int bs.data *= 256 bs.const
scoreboard players operation $color.rgb_to_int bs.out += #color.rgb_to_int bs.data
scoreboard players operation $color.rgb_to_int bs.out += $color.rgb_to_int.color.2 bs.in

return run scoreboard players get $color.rgb_to_int bs.out
