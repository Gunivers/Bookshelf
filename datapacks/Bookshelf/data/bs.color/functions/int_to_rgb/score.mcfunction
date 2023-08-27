# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/???? (1.14)
# Last modification: 16/08/2023 (23w32a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#int-to-rgb
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

scoreboard players operation $color.int_to_rgb.r bs.out = $color.int_to_rgb.color bs.in
scoreboard players operation $color.int_to_rgb.r bs.out /= 65536 bs.const
scoreboard players operation $color.int_to_rgb.r bs.out %= 256 bs.const

scoreboard players operation $color.int_to_rgb.g bs.out = $color.int_to_rgb.color bs.in
scoreboard players operation $color.int_to_rgb.g bs.out /= 256 bs.const
scoreboard players operation $color.int_to_rgb.g bs.out %= 256 bs.const

scoreboard players operation $color.int_to_rgb.b bs.out = $color.int_to_rgb.color bs.in
scoreboard players operation $color.int_to_rgb.b bs.out %= 256 bs.const
