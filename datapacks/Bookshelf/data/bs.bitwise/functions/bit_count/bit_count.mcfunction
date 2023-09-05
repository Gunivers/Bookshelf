# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 1.0
# Created: ??/??/???? (1.16)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#bit-count
# Dependencies:
# Note:
# - This function returns the number of bits of the absolute value of the input
# - Example: a = 1451, (a)2 = 0b10110101011, |(a)2| = 11
# - Example: a = -1451, (abs(a))2 = 0b10110101011, |(abs(a))2| = 11

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.bit_count bs.data = $bitwise.bit_count.value bs.in
execute if score $bitwise.bit_count.value bs.in matches ..-1 run scoreboard players operation #bitwise.bit_count bs.data *= -1 bs.const

execute if score #bitwise.bit_count bs.data matches 0..127 run function bs.bitwise:bit_count/group_1
execute if score #bitwise.bit_count bs.data matches 128..32767 run function bs.bitwise:bit_count/group_2
execute if score #bitwise.bit_count bs.data matches 32768..8388607 run function bs.bitwise:bit_count/group_3
execute if score #bitwise.bit_count bs.data matches 8388608.. run function bs.bitwise:bit_count/group_4
