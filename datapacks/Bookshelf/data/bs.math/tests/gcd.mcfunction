# gcd returns the correct values
# @batch bs.math

scoreboard players set $math.gcd.a bs.in 16
scoreboard players set $math.gcd.b bs.in 12
function #bs.math:gcd
assert score $math.gcd bs.out matches 4

scoreboard players set $math.gcd.a bs.in 56616
scoreboard players set $math.gcd.b bs.in 1568
function #bs.math:gcd
assert score $math.gcd bs.out matches 56
