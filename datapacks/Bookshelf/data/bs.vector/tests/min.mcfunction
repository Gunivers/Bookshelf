# Min returns correct values
# @batch bs.vector

scoreboard players set $vector.min.0 bs.in 52
scoreboard players set $vector.min.1 bs.in -48
scoreboard players set $vector.min.2 bs.in -12
function #bs.vector:min
assert score $vector.min bs.out matches -12

scoreboard players set $vector.min.0 bs.in -85
scoreboard players set $vector.min.1 bs.in 48
scoreboard players set $vector.min.2 bs.in 72
function #bs.vector:min
assert score $vector.min bs.out matches 48
