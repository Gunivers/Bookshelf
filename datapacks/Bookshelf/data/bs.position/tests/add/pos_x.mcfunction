# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score #packtest.x_min bs.data store result score #packtest.x_max bs.data store result score @s bs.pos.x run random value -10000..10000
function #bs.position:add_pos_x {scale:.001}
execute store result score #packtest.x bs.data run data get entity @s Pos[0] 1000

dummy @s leave

scoreboard players remove #packtest.x_min bs.data 2
scoreboard players add #packtest.x_max bs.data 2

assert score #packtest.x_min bs.data < #packtest.x bs.data
assert score #packtest.x_max bs.data > #packtest.x bs.data
