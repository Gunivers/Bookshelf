# ------------------------------------------------------------------------------------------------------------
# Copyright (c) 2024 Gunivers
#
# This file is part of the Bookshelf project (https://github.com/Gunivers/Bookshelf).
#
# This source code is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# Conditions:
# - You may use this file in compliance with the MPL v2.0
# - Any modifications must be documented and disclosed under the same license
#
# For more details, refer to the MPL v2.0.
#
# Documentation of the feature: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#bit-length
# ------------------------------------------------------------------------------------------------------------

# Note:
# - This function returns the number of bits needed to represent a number
# - Example: a = 1451, (a)2 = 0b10110101011, |(a)2| = 11


scoreboard players operation #bitwise.bit_length bs.data = $bitwise.bit_length.n bs.in
execute if score #bitwise.bit_length bs.data matches ..-1 run scoreboard players operation #bitwise.bit_length bs.data *= -1 bs.const
execute if score #bitwise.bit_length bs.data matches 0..127 run return run function bs.bitwise:bit_length/group_1
execute if score #bitwise.bit_length bs.data matches 128..32767 run return run function bs.bitwise:bit_length/group_2
execute if score #bitwise.bit_length bs.data matches 32768..8388607 run return run function bs.bitwise:bit_length/group_3
execute if score #bitwise.bit_length bs.data matches 8388608..2147483647 run return run function bs.bitwise:bit_length/group_4
