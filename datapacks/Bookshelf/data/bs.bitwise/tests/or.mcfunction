# Or operator returns correct values
# @batch bs.bitwise

scoreboard players set $bitwise.or.a bs.in -9
scoreboard players set $bitwise.or.b bs.in 57
function #bs.bitwise:or
assert score $bitwise.or bs.out matches -1

scoreboard players set $bitwise.or.a bs.in 1234567890
scoreboard players set $bitwise.or.b bs.in 123456
function #bs.bitwise:or
assert score $bitwise.or bs.out matches 1234690770
