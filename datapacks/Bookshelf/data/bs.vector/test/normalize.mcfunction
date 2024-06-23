# Normalize returns correct values
# @batch bs.vector

scoreboard players set $vector.normalize.0 bs.in 37216
scoreboard players set $vector.normalize.1 bs.in 3383
scoreboard players set $vector.normalize.2 bs.in 19172

function #bs.vector:normalize {scale:1000}

assert score $vector.normalize.0 bs.out matches 885..887
assert score $vector.normalize.1 bs.out matches 79..81
assert score $vector.normalize.2 bs.out matches 455..457
