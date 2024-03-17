# Dot product returns correct values
# @batch bs.vector

scoreboard players set $vector.dot_product.u.0 bs.in 24
scoreboard players set $vector.dot_product.u.1 bs.in 35
scoreboard players set $vector.dot_product.u.2 bs.in 42

scoreboard players set $vector.dot_product.v.0 bs.in 35
scoreboard players set $vector.dot_product.v.1 bs.in 42
scoreboard players set $vector.dot_product.v.2 bs.in 45

function #bs.vector:dot_product {scaling:10}

assert score $vector.dot_product bs.out matches 420
