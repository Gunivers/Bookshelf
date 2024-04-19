# asin returns the correct values
# @batch bs.math

scoreboard players set $math.asin.x bs.in 420
function #bs.math:asin
assert score $math.asin bs.out matches 2482..2484

scoreboard players set $math.asin.x bs.in -826
function #bs.math:asin
assert score $math.asin bs.out matches -5570..-5568
