# And operator returns correct values
# @batch bs.bitwise

scoreboard players set $bitwise.and.a bs.in -9
scoreboard players set $bitwise.and.b bs.in 57
function #bs.bitwise:and
assert score $bitwise.and bs.out matches 49

scoreboard players set $bitwise.and.a bs.in 1234567890
scoreboard players set $bitwise.and.b bs.in 123456
function #bs.bitwise:and
assert score $bitwise.and bs.out matches 5
