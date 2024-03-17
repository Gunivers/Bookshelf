# Max returns correct values
# @batch bs.vector

scoreboard players set $vector.max.0 bs.in 52
scoreboard players set $vector.max.1 bs.in -48
scoreboard players set $vector.max.2 bs.in 12
function #bs.vector:max
assert score $vector.max bs.out matches 52

scoreboard players set $vector.max.0 bs.in -85
scoreboard players set $vector.max.1 bs.in 48
scoreboard players set $vector.max.2 bs.in 72
function #bs.vector:max
assert score $vector.max bs.out matches -85
