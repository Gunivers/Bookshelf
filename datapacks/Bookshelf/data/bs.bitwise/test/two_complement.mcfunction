# Two complement returns correct values
# @batch bs.bitwise

scoreboard players set $bitwise.two_complement.n bs.in 123456
function #bs.bitwise:two_complement
assert score $bitwise.two_complement bs.out matches 123456

scoreboard players set $bitwise.two_complement.n bs.in -197364158
function #bs.bitwise:two_complement
assert score $bitwise.two_complement bs.out matches 1950119490
