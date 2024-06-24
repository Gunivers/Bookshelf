# divide returns the correct values
# @batch bs.math

scoreboard players set $math.divide.x bs.in 9
scoreboard players set $math.divide.y bs.in 5
function #bs.math:divide
assert score $math.divide bs.out matches 2

scoreboard players set $math.divide.x bs.in 11
scoreboard players set $math.divide.y bs.in 5
function #bs.math:divide
assert score $math.divide bs.out matches 2
