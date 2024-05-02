# Rot returns correct values
# @batch bs.position
# @dummy

execute at @s rotated ~1 ~1 run function #bs.position:get_rot {scale:10}

execute store result score #packtest.h_min bs.data store result score #packtest.h_max bs.data run data get entity @s Rotation[0] 10
execute store result score #packtest.v_min bs.data store result score #packtest.v_max bs.data run data get entity @s Rotation[1] 10
scoreboard players add #packtest.h_min bs.data 8
scoreboard players add #packtest.v_min bs.data 8
scoreboard players add #packtest.h_max bs.data 12
scoreboard players add #packtest.v_max bs.data 12

assert score #packtest.h_min bs.data < @s bs.rot.h
assert score #packtest.v_min bs.data < @s bs.rot.v
assert score #packtest.h_max bs.data > @s bs.rot.h
assert score #packtest.v_max bs.data > @s bs.rot.v
