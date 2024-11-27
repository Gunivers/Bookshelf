# Bit length returns correct values
# @batch bs.bitwise

scoreboard players set $bitwise.bit_length.n bs.in -1568
function #bs.bitwise:bit_length
assert score $bitwise.bit_length bs.out matches 11

scoreboard players set $bitwise.bit_length.n bs.in 174653179
function #bs.bitwise:bit_length
assert score $bitwise.bit_length bs.out matches 28
