# Remaining points formula works for all levels
# @batch bs.xp
# @dummy

xp set @s 5 levels
xp set @s 5 points
execute store result score #r bs.ctx run function #bs.xp:get_remaining_points
assert score #r bs.ctx matches 12

xp set @s 21 levels
xp set @s 12 points
execute store result score #r bs.ctx run function #bs.xp:get_remaining_points
assert score #r bs.ctx matches 55

xp set @s 42 levels
xp set @s 18 points
execute store result score #r bs.ctx run function #bs.xp:get_remaining_points
assert score #r bs.ctx matches 202
