# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/???? (1.14)
# Last modification: 16/08/2023 (23w32a)

# Documentation: 
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $color.rgb_to_int bs.out = $color.rgb_to_int.value.0 bs.in
scoreboard players operation $color.rgb_to_int bs.out *= 65536 bs.const
scoreboard players operation #color.rgb_to_int bs.data = $color.rgb_to_int.value.1 bs.in
scoreboard players operation #color.rgb_to_int bs.data *= 256 bs.const
scoreboard players operation $color.rgb_to_int bs.out += #color.rgb_to_int bs.data
scoreboard players operation $color.rgb_to_int bs.out += $color.rgb_to_int.value.2 bs.in

return run scoreboard players get $color.rgb_to_int bs.out
