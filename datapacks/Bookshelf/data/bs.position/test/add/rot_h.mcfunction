# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score #packtest.h_min bs.data store result score #packtest.h_max bs.data store result score @s bs.rot.h run random value -10000..10000
function #bs.position:add_rot_h {scale:.001}
execute store result score #packtest.h bs.data run data get entity @s Rotation[0] 1000

dummy @s leave

scoreboard players remove #packtest.h_min bs.data 2
scoreboard players add #packtest.h_max bs.data 2

assert score #packtest.h_min bs.data < #packtest.h bs.data
assert score #packtest.h_max bs.data > #packtest.h bs.data
