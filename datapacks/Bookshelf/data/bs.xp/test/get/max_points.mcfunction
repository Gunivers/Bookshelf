# Max points formula works for all levels
# @batch bs.xp
# @dummy

xp set @s 5 levels
execute store result score #result bs.data run function #bs.xp:get_max_points
assert score #result bs.data matches 17

xp set @s 21 levels
execute store result score #result bs.data run function #bs.xp:get_max_points
assert score #result bs.data matches 67

xp set @s 42 levels
execute store result score #result bs.data run function #bs.xp:get_max_points
assert score #result bs.data matches 220
