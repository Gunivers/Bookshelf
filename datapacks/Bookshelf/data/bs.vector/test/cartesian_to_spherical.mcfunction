# Convert cartesian to spherical coordinates
# @batch bs.vector

scoreboard players set $vector.cartesian_to_spherical.0 bs.in 577
scoreboard players set $vector.cartesian_to_spherical.1 bs.in 577
scoreboard players set $vector.cartesian_to_spherical.2 bs.in 577

function #bs.vector:cartesian_to_spherical {scaling:1000}

assert score $vector.cartesian_to_spherical.0 bs.out matches -45001..-44999
assert score $vector.cartesian_to_spherical.1 bs.out matches -35266..-35264
assert score $vector.cartesian_to_spherical.2 bs.out matches 999..1001
