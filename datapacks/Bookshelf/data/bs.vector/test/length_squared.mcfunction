# Length squared returns correct values
# @batch bs.vector

scoreboard players set $vector.length_squared.0 bs.in 4000
scoreboard players set $vector.length_squared.1 bs.in 5000
scoreboard players set $vector.length_squared.2 bs.in 1000

function #bs.vector:length_squared {scaling:1000}

assert score $vector.length_squared bs.out matches 42000
