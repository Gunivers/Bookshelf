# Pos and rot returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 rotated ~1 ~1 run function #bs.position:get_pos_and_rot {scale:10}

execute store result score #packtest.x_min bs.data store result score #packtest.x_max bs.data run data get entity @s Pos[0] 10
execute store result score #packtest.y_min bs.data store result score #packtest.y_max bs.data run data get entity @s Pos[1] 10
execute store result score #packtest.z_min bs.data store result score #packtest.z_max bs.data run data get entity @s Pos[2] 10
execute store result score #packtest.h_min bs.data store result score #packtest.h_max bs.data run data get entity @s Rotation[0] 10
execute store result score #packtest.v_min bs.data store result score #packtest.v_max bs.data run data get entity @s Rotation[1] 10

scoreboard players add #packtest.x_min bs.data 8
scoreboard players add #packtest.y_min bs.data 8
scoreboard players add #packtest.z_min bs.data 8
scoreboard players add #packtest.h_min bs.data 8
scoreboard players add #packtest.v_min bs.data 8
scoreboard players add #packtest.x_max bs.data 12
scoreboard players add #packtest.y_max bs.data 12
scoreboard players add #packtest.z_max bs.data 12
scoreboard players add #packtest.h_max bs.data 12
scoreboard players add #packtest.v_max bs.data 12

assert score #packtest.x_min bs.data < @s bs.pos.x
assert score #packtest.y_min bs.data < @s bs.pos.y
assert score #packtest.z_min bs.data < @s bs.pos.z
assert score #packtest.h_min bs.data < @s bs.rot.h
assert score #packtest.v_min bs.data < @s bs.rot.v
assert score #packtest.x_max bs.data > @s bs.pos.x
assert score #packtest.y_max bs.data > @s bs.pos.y
assert score #packtest.z_max bs.data > @s bs.pos.z
assert score #packtest.h_max bs.data > @s bs.rot.h
assert score #packtest.v_max bs.data > @s bs.rot.v
