# Points are added correctly
# @batch bs.xp
# @dummy

function #bs.xp:add_points {points:1}
execute store result score #r bs.ctx run xp query @s points
assert score #r bs.ctx matches 1

function #bs.xp:add_points {points:5}
execute store result score #r bs.ctx run xp query @s points
assert score #r bs.ctx matches 6
