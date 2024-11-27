# factorial returns the correct values
# @batch bs.math

scoreboard players set $math.factorial.n bs.in 3
function #bs.math:factorial
assert score $math.factorial bs.out matches 6

scoreboard players set $math.factorial.n bs.in 11
function #bs.math:factorial
assert score $math.factorial bs.out matches 39916800
