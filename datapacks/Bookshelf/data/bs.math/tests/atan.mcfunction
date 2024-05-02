# atan returns the correct values
# @batch bs.math

scoreboard players set $math.atan.x bs.in 420
function #bs.math:atan
assert score $math.atan bs.out matches 2277..2279

scoreboard players set $math.atan.x bs.in -826
function #bs.math:atan
assert score $math.atan bs.out matches -3956..-3954
