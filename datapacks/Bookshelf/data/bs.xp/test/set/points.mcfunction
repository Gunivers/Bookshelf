# Points are set correctly
# @batch bs.xp
# @dummy

function #bs.xp:set_points {points:5}
execute store result score #r bs.ctx run xp query @s points
assert score #r bs.ctx matches 5

function #bs.xp:set_points {points:2}
execute store result score #r bs.ctx run xp query @s points
assert score #r bs.ctx matches 2
