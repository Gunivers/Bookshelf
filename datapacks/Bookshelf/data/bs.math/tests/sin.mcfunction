# sin returns the correct values
# @batch bs.math

scoreboard players set $math.sin.x bs.in 6442
function #bs.math:sin
assert score $math.sin bs.out matches 900..902

scoreboard players set $math.sin.x bs.in -21513
function #bs.math:sin
assert score $math.sin bs.out matches 574..576
