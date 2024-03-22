# Progress scaling works as expected
# @batch bs.xp
# @dummy

xp set @s 1 points
execute store result score #result bs.data run function #bs.xp:get_progress {scale:10000}
assert score #result bs.data matches 1428

xp set @s 5 points
execute store result score #result bs.data run function #bs.xp:get_progress {scale:100}
assert score #result bs.data matches 71
