# acos returns the correct values
# @batch bs.math

scoreboard players set $math.acos.x bs.in 420
function #bs.math:acos
assert score $math.acos bs.out matches 6515..6517

scoreboard players set $math.acos.x bs.in -826
function #bs.math:acos
assert score $math.acos bs.out matches 14568..14570
