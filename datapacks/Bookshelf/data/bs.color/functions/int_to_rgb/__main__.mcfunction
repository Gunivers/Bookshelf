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

scoreboard players operation $color.int_to_rgb.0 bs.out = $color.int_to_rgb.value bs.in
scoreboard players operation $color.int_to_rgb.0 bs.out /= 65536 bs.const
scoreboard players operation $color.int_to_rgb.0 bs.out %= 256 bs.const

scoreboard players operation $color.int_to_rgb.1 bs.out = $color.int_to_rgb.value bs.in
scoreboard players operation $color.int_to_rgb.1 bs.out /= 256 bs.const
scoreboard players operation $color.int_to_rgb.1 bs.out %= 256 bs.const

scoreboard players operation $color.int_to_rgb.2 bs.out = $color.int_to_rgb.value bs.in
scoreboard players operation $color.int_to_rgb.2 bs.out %= 256 bs.const
