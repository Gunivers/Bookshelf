# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet
# Contributors: Aksiome

# Version: 2.0
# Created: ??/??/???? (1.14)
# Last modification: 22/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/color.html#rgb-to-int
# Dependencies:
# Note:

# CODE ------------------------------------------------------------------------

$data modify storage bs:ctx _ set value $(color)

execute store result score #color.rgb_to_int.r bs.data run data get storage bs:ctx _[0]
execute store result score #color.rgb_to_int.g bs.data run data get storage bs:ctx _[1]
execute store result score #color.rgb_to_int.b bs.data run data get storage bs:ctx _[2]

scoreboard players operation $color.rgb_to_int bs.out = #color.rgb_to_int.r bs.data
scoreboard players operation $color.rgb_to_int bs.out *= 65536 bs.const
scoreboard players operation #color.rgb_to_int bs.data = #color.rgb_to_int.g bs.data
scoreboard players operation #color.rgb_to_int bs.data *= 256 bs.const
scoreboard players operation $color.rgb_to_int bs.out += #color.rgb_to_int bs.data
return run execute store result storage bs:out color.rgb_to_int int 1 run scoreboard players operation $color.rgb_to_int bs.out += #color.rgb_to_int.b bs.data
