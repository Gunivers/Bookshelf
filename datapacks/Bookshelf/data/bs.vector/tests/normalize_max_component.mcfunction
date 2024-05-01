# Fast normalize returns correct values
# @batch bs.vector

scoreboard players set $vector.normalize_max_component.0 bs.in 37216
scoreboard players set $vector.normalize_max_component.1 bs.in 3383
scoreboard players set $vector.normalize_max_component.2 bs.in 19172

function #bs.vector:normalize_max_component {scale:1000}

assert score $vector.normalize_max_component.0 bs.out matches 1000
assert score $vector.normalize_max_component.1 bs.out matches 89..91
assert score $vector.normalize_max_component.2 bs.out matches 514..516
