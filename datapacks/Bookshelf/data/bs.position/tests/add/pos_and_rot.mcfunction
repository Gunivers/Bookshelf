# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score #packtest.x_min bs.data store result score #packtest.x_max bs.data store result score @s bs.pos.x run random value -10000..10000
execute store result score #packtest.y_min bs.data store result score #packtest.y_max bs.data store result score @s bs.pos.y run random value -10000..10000
execute store result score #packtest.z_min bs.data store result score #packtest.z_max bs.data store result score @s bs.pos.z run random value -10000..10000
execute store result score #packtest.h_min bs.data store result score #packtest.h_max bs.data store result score @s bs.rot.h run random value -10000..10000
execute store result score #packtest.v_min bs.data store result score #packtest.v_max bs.data store result score @s bs.rot.v run random value -10000..10000
function #bs.position:add_pos_and_rot {scale:.001}
execute store result score #packtest.x bs.data run data get entity @s Pos[0] 1000
execute store result score #packtest.y bs.data run data get entity @s Pos[1] 1000
execute store result score #packtest.z bs.data run data get entity @s Pos[2] 1000
execute store result score #packtest.h bs.data run data get entity @s Rotation[0] 1000
execute store result score #packtest.v bs.data run data get entity @s Rotation[1] 1000

dummy @s leave

scoreboard players remove #packtest.x_min bs.data 2
scoreboard players remove #packtest.y_min bs.data 2
scoreboard players remove #packtest.z_min bs.data 2
scoreboard players remove #packtest.h_min bs.data 2
scoreboard players remove #packtest.v_min bs.data 2
scoreboard players add #packtest.x_max bs.data 2
scoreboard players add #packtest.y_max bs.data 2
scoreboard players add #packtest.z_max bs.data 2
scoreboard players add #packtest.h_max bs.data 2
scoreboard players add #packtest.v_max bs.data 2

assert score #packtest.x_min bs.data < #packtest.x bs.data
assert score #packtest.y_min bs.data < #packtest.y bs.data
assert score #packtest.z_min bs.data < #packtest.z bs.data
assert score #packtest.h_min bs.data < #packtest.h bs.data
assert score #packtest.v_min bs.data < #packtest.v bs.data
assert score #packtest.x_max bs.data > #packtest.x bs.data
assert score #packtest.y_max bs.data > #packtest.y bs.data
assert score #packtest.z_max bs.data > #packtest.z bs.data
assert score #packtest.h_max bs.data > #packtest.h bs.data
assert score #packtest.v_max bs.data > #packtest.v bs.data
