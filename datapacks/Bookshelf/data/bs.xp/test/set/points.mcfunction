# Points are set correctly
# @batch bs.xp
# @dummy

function #bs.xp:set_points {points:5}
execute store result score #result bs.data run xp query @s points
assert score #result bs.data matches 5

function #bs.xp:set_points {points:2}
execute store result score #result bs.data run xp query @s points
assert score #result bs.data matches 2
