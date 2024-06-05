# INFO ------------------------------------------------------------------------
# Copyright © 2024 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 2.1
# Created: ??/??/???? (1.16)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#bit-length
# Dependencies:
# Note:
# - This function returns the number of bits needed to represent a number
# - Example: a = 1451, (a)2 = 0b10110101011, |(a)2| = 11

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.bit_length bs.data = $bitwise.bit_length.n bs.in
execute if score #bitwise.bit_length bs.data matches ..-1 run scoreboard players operation #bitwise.bit_length bs.data *= -1 bs.const
execute if score #bitwise.bit_length bs.data matches 0..127 run return run function bs.bitwise:bit_length/group_1
execute if score #bitwise.bit_length bs.data matches 128..32767 run return run function bs.bitwise:bit_length/group_2
execute if score #bitwise.bit_length bs.data matches 32768..8388607 run return run function bs.bitwise:bit_length/group_3
execute if score #bitwise.bit_length bs.data matches 8388608..2147483647 run return run function bs.bitwise:bit_length/group_4
