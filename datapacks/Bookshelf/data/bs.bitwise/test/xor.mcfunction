# Xor operator returns correct values
# @batch bs.bitwise

scoreboard players set $bitwise.xor.a bs.in -9
scoreboard players set $bitwise.xor.b bs.in 57
function #bs.bitwise:xor
assert score $bitwise.xor bs.out matches -50

scoreboard players set $bitwise.xor.a bs.in 1234567890
scoreboard players set $bitwise.xor.b bs.in 123456
function #bs.bitwise:xor
assert score $bitwise.xor bs.out matches 1234690194
