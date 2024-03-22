# Cross product returns correct values
# @batch bs.vector

scoreboard players set $vector.cross_product.u.0 bs.in 4
scoreboard players set $vector.cross_product.u.1 bs.in 2
scoreboard players set $vector.cross_product.u.2 bs.in 5

scoreboard players set $vector.cross_product.v.0 bs.in 1
scoreboard players set $vector.cross_product.v.1 bs.in 3
scoreboard players set $vector.cross_product.v.2 bs.in 9

function #bs.vector:cross_product {scaling:1}

assert score $vector.cross_product.0 bs.out matches 3
assert score $vector.cross_product.1 bs.out matches -31
assert score $vector.cross_product.2 bs.out matches 10
