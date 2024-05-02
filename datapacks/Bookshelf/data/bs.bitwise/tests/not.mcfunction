# Not operator returns correct values
# @batch bs.bitwise

scoreboard players set $bitwise.not.n bs.in 123456
function #bs.bitwise:not
assert score $bitwise.not bs.out matches -123457

scoreboard players set $bitwise.not.n bs.in -197364158
function #bs.bitwise:not
assert score $bitwise.not bs.out matches 197364157
