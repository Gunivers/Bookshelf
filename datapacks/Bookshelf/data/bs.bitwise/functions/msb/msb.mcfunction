# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.0
# Created: 25/08/2023 (23w33a)
# Last modification: 25/08/2023 (23w33a)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#most-significant-bit
# Dependencies:
# Note:
# - This function returns the most significant bit value of the input
# - Example: 267 => 128
# - Example: 64 => 64
# - Example: -64 => 32

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.msb bs.data = $bitwise.msb.value bs.in
execute if score $bitwise.msb.value bs.in matches ..-1 run scoreboard players operation #bitwise.msb bs.data *= -1 bs.const
execute if score $bitwise.msb.value bs.in matches ..-1 run scoreboard players remove #bitwise.msb bs.data 1

execute if score #bitwise.msb bs.data matches 0..127 run function bs.bitwise:msb/group_1
execute if score #bitwise.msb bs.data matches 128..32767 run function bs.bitwise:msb/group_2
execute if score #bitwise.msb bs.data matches 32768..8388607 run function bs.bitwise:msb/group_3
execute if score #bitwise.msb bs.data matches 8388608.. run function bs.bitwise:msb/group_4
