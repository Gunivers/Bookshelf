# combine returns the correct values
# @batch bs.math

scoreboard players set $math.combine.n bs.in 42
scoreboard players set $math.combine.k bs.in 7
function #bs.math:combine
assert score $math.combine bs.out matches 26978328

scoreboard players set $math.combine.n bs.in 128
scoreboard players set $math.combine.k bs.in 3
function #bs.math:combine
assert score $math.combine bs.out matches 341376

scoreboard players set $math.combine.n bs.in 42
scoreboard players set $math.combine.k bs.in 9
function #bs.math:combine
assert score $math.combine bs.out matches 445891810
