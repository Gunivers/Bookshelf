# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score #packtest.z_min bs.data store result score #packtest.z_max bs.data store result score @s bs.pos.z run random value -10000..10000
function #bs.position:add_pos_z {scale:.001}
execute store result score #packtest.z bs.data run data get entity @s Pos[2] 1000

dummy @s leave

scoreboard players remove #packtest.z_min bs.data 2
scoreboard players add #packtest.z_max bs.data 2

assert score #packtest.z_min bs.data < #packtest.z bs.data
assert score #packtest.z_max bs.data > #packtest.z bs.data
