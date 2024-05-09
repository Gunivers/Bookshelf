# Max returns correct values
# @batch bs.vector

scoreboard players set $vector.abs_max.0 bs.in 52
scoreboard players set $vector.abs_max.1 bs.in -48
scoreboard players set $vector.abs_max.2 bs.in 12
function #bs.vector:abs_max
assert score $vector.abs_max bs.out matches 52

scoreboard players set $vector.abs_max.0 bs.in -85
scoreboard players set $vector.abs_max.1 bs.in 48
scoreboard players set $vector.abs_max.2 bs.in 72
function #bs.vector:abs_max
assert score $vector.abs_max bs.out matches -85
