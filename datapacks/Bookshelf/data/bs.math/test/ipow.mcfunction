# ipow returns the correct values
# @batch bs.math

scoreboard players set $math.ipow.x bs.in 12
scoreboard players set $math.ipow.y bs.in 7
function #bs.math:ipow
assert score $math.ipow bs.out matches 35831808

scoreboard players set $math.ipow.x bs.in 42
scoreboard players set $math.ipow.y bs.in 3
function #bs.math:ipow
assert score $math.ipow bs.out matches 74088
