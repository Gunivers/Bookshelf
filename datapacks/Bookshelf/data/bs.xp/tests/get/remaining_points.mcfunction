# Remaining points formula works for all levels
# @batch bs.xp
# @dummy

xp set @s 5 levels
xp set @s 5 points
execute store result score #result bs.data run function #bs.xp:get_remaining_points
assert score #result bs.data matches 12

xp set @s 21 levels
xp set @s 12 points
execute store result score #result bs.data run function #bs.xp:get_remaining_points
assert score #result bs.data matches 55

xp set @s 42 levels
xp set @s 18 points
execute store result score #result bs.data run function #bs.xp:get_remaining_points
assert score #result bs.data matches 202
