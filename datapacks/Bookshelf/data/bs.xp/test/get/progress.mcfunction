# Progress scaling works as expected
# @batch bs.xp
# @dummy

xp set @s 1 points
execute store result score #r bs.ctx run function #bs.xp:get_progress {scale:10000}
assert score #r bs.ctx matches 1428

xp set @s 5 points
execute store result score #r bs.ctx run function #bs.xp:get_progress {scale:100}
assert score #r bs.ctx matches 71
