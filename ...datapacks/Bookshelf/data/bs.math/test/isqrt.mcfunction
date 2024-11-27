# isqrt returns the correct values
# @batch bs.math

scoreboard players set $math.isqrt.x bs.in 49
function #bs.math:isqrt
assert score $math.isqrt bs.out matches 7

scoreboard players set $math.isqrt.x bs.in 48
function #bs.math:isqrt
assert score $math.isqrt bs.out matches 6
