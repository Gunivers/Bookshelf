# Convert spherical to cartesian coordinates
# @batch bs.vector

await entity B5-0-0-0-1

scoreboard players set $vector.spherical_to_cartesian.0 bs.in 15250
scoreboard players set $vector.spherical_to_cartesian.1 bs.in 42000
scoreboard players set $vector.spherical_to_cartesian.2 bs.in 8525

function #bs.vector:spherical_to_cartesian {scaling:1000}

assert score $vector.spherical_to_cartesian.0 bs.out matches -1667..-1665
assert score $vector.spherical_to_cartesian.1 bs.out matches -5704..-5702
assert score $vector.spherical_to_cartesian.2 bs.out matches 6111..6113
