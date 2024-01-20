# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/???? (1.14)
# Last modification: 22/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#convert-to-rgb
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$scoreboard players set #color.int_to_rgb bs.data $(color)

scoreboard players operation $color.int_to_rgb.r bs.out = #color.int_to_rgb bs.data
scoreboard players operation $color.int_to_rgb.r bs.out /= 65536 bs.const
scoreboard players operation $color.int_to_rgb.g bs.out = #color.int_to_rgb bs.data
scoreboard players operation $color.int_to_rgb.g bs.out /= 256 bs.const
scoreboard players operation $color.int_to_rgb.b bs.out = #color.int_to_rgb bs.data

execute store result storage bs:out color.int_to_rgb[0] int 1 run scoreboard players operation $color.int_to_rgb.r bs.out %= 256 bs.const
execute store result storage bs:out color.int_to_rgb[1] int 1 run scoreboard players operation $color.int_to_rgb.g bs.out %= 256 bs.const
execute store result storage bs:out color.int_to_rgb[2] int 1 run scoreboard players operation $color.int_to_rgb.b bs.out %= 256 bs.const
