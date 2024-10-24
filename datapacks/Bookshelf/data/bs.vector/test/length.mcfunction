# Length returns correct values
# @batch bs.vector

await entity B5-0-0-0-2

scoreboard players set $vector.length.0 bs.in 37216
scoreboard players set $vector.length.1 bs.in 3383
scoreboard players set $vector.length.2 bs.in 19172

function #bs.vector:length

assert score $vector.length bs.out matches 42000
