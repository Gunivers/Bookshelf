# tan returns the correct values
# @batch bs.math

scoreboard players set $math.tan.x bs.in 4250
function #bs.math:tan
assert score $math.tan bs.out matches 915..917

scoreboard players set $math.tan.x bs.in -21513
function #bs.math:tan
assert score $math.tan bs.out matches -704..-702
