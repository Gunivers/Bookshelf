# Points are added correctly
# @batch bs.xp
# @dummy

function #bs.xp:add_points {points:1}
execute store result score #result bs.data run xp query @s points
assert score #result bs.data matches 1

function #bs.xp:add_points {points:5}
execute store result score #result bs.data run xp query @s points
assert score #result bs.data matches 6
