# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors: Aksiome
# Contributors:

# Version: 1.1
# Created: 25/08/2023 (23w33a)
# Last modification: 27/02/2024 (1.20.4)

# Documentation: https://bookshelf.docs.gunivers.net/en/latest/modules/bitwise.html#most-significant-bit
# Dependencies:
# Note:
# - This function returns the most significant bit value of the input
# - Example: 267 => 128
# - Example: 64 => 64

# CODE ------------------------------------------------------------------------

scoreboard players operation #bitwise.msb bs.data = $bitwise.msb.n bs.in
execute if score $bitwise.msb.n bs.in matches ..-1 run scoreboard players add #bitwise.msb bs.data 2147483647
execute if score $bitwise.msb.n bs.in matches ..-1 run scoreboard players add #bitwise.msb bs.data 1

execute if score #bitwise.msb bs.data matches 0..127 run return run function bs.bitwise:msb/group_1
execute if score #bitwise.msb bs.data matches 128..32767 run return run function bs.bitwise:msb/group_2
execute if score #bitwise.msb bs.data matches 32768..8388607 run return run function bs.bitwise:msb/group_3
execute if score #bitwise.msb bs.data matches 8388608..2147483647 run return run function bs.bitwise:msb/group_4
