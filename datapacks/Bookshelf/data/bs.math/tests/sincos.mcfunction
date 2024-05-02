# sincos returns the correct values
# @batch bs.math

scoreboard players set $math.sincos.x bs.in 6442
function #bs.math:sincos
assert score $math.sincos.cos bs.out matches 430..432
assert score $math.sincos.sin bs.out matches 900..902

scoreboard players set $math.sincos.x bs.in -21513
function #bs.math:sincos
assert score $math.sincos.cos bs.out matches -818..-816
assert score $math.sincos.sin bs.out matches 574..576
