# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score #packtest.v_min bs.data store result score #packtest.v_max bs.data store result score @s bs.rot.v run random value -10000..10000
function #bs.position:add_rot {scale:.001}
execute store result score #packtest.v bs.data run data get entity @s Rotation[1] 1000

dummy @s leave

scoreboard players remove #packtest.v_min bs.data 2
scoreboard players add #packtest.v_max bs.data 2

assert score #packtest.v_min bs.data < #packtest.v bs.data
assert score #packtest.v_max bs.data > #packtest.v bs.data
