# Min returns correct values
# @batch bs.vector

scoreboard players set $vector.abs_min.0 bs.in 52
scoreboard players set $vector.abs_min.1 bs.in -48
scoreboard players set $vector.abs_min.2 bs.in -12
function #bs.vector:abs_min
assert score $vector.abs_min bs.out matches -12

scoreboard players set $vector.abs_min.0 bs.in -85
scoreboard players set $vector.abs_min.1 bs.in 48
scoreboard players set $vector.abs_min.2 bs.in 72
function #bs.vector:abs_min
assert score $vector.abs_min bs.out matches 48
