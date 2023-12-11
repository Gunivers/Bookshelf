# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: theogiraudet, Aksiome
# Contributors:

# Version: 2.0
# Created: ??/??/???? (1.16)
# Last modification: 22/10/2023 (1.20.2)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#size
# Dependencies:
# Note:
# - This function returns the number of bits needed to represent a number
# - Example: a = 1451, (a)2 = 0b10110101011, |(a)2| = 11

# CODE ------------------------------------------------------------------------

execute if score $bitwise.size.value bs.in matches 0..127 run return run function bs.bitwise:size/group_1
execute if score $bitwise.size.value bs.in matches 128..32767 run return run function bs.bitwise:size/group_2
execute if score $bitwise.size.value bs.in matches 32768..8388607 run return run function bs.bitwise:size/group_3
execute if score $bitwise.size.value bs.in matches 8388608..2147483647 run return run function bs.bitwise:size/group_4
execute if score $bitwise.size.value bs.in matches ..-1 run return run scoreboard players set $bitwise.size bs.out 32
