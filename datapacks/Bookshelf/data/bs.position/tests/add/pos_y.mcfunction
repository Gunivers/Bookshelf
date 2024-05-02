# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score #packtest.y_min bs.data store result score #packtest.y_max bs.data store result score @s bs.pos.y run random value -10000..10000
function #bs.position:add_pos_y {scale:.001}
execute store result score #packtest.y bs.data run data get entity @s Pos[1] 1000

dummy @s leave

scoreboard players remove #packtest.y_min bs.data 2
scoreboard players add #packtest.y_max bs.data 2

assert score #packtest.y_min bs.data < #packtest.y bs.data
assert score #packtest.y_max bs.data > #packtest.y bs.data
