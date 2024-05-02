# cos returns the correct values
# @batch bs.math

scoreboard players set $math.cos.x bs.in 6442
function #bs.math:cos
assert score $math.cos bs.out matches 430..432

scoreboard players set $math.cos.x bs.in -21513
function #bs.math:cos
assert score $math.cos bs.out matches -818..-816
