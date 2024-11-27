# Bit count returns correct values
# @batch bs.bitwise

scoreboard players set $bitwise.bit_count.n bs.in -1568
function #bs.bitwise:bit_count
assert score $bitwise.bit_count bs.out matches 3

scoreboard players set $bitwise.bit_count.n bs.in 174653179
function #bs.bitwise:bit_count
assert score $bitwise.bit_count bs.out matches 19
