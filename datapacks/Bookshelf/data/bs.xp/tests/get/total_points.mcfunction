# Total points formula works for all levels
# @batch bs.xp
# @dummy

xp set @s 42 levels
execute store result score #result bs.data run function #bs.xp:get_total_points
assert score #result bs.data matches 3333

xp add @s -2500 points
execute store result score #result bs.data run function #bs.xp:get_total_points
assert score #result bs.data matches 833

xp add @s -700 points
execute store result score #result bs.data run function #bs.xp:get_total_points
assert score #result bs.data matches 133
