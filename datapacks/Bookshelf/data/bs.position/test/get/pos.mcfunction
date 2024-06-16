# Pos returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 run function #bs.position:get_pos {scale:10}

execute store result score #packtest.x_min bs.data store result score #packtest.x_max bs.data run data get entity @s Pos[0] 10
execute store result score #packtest.y_min bs.data store result score #packtest.y_max bs.data run data get entity @s Pos[1] 10
execute store result score #packtest.z_min bs.data store result score #packtest.z_max bs.data run data get entity @s Pos[2] 10

scoreboard players add #packtest.x_min bs.data 8
scoreboard players add #packtest.y_min bs.data 8
scoreboard players add #packtest.z_min bs.data 8
scoreboard players add #packtest.x_max bs.data 12
scoreboard players add #packtest.y_max bs.data 12
scoreboard players add #packtest.z_max bs.data 12

assert score #packtest.x_min bs.data < @s bs.pos.x
assert score #packtest.y_min bs.data < @s bs.pos.y
assert score #packtest.z_min bs.data < @s bs.pos.z
assert score #packtest.x_max bs.data > @s bs.pos.x
assert score #packtest.y_max bs.data > @s bs.pos.y
assert score #packtest.z_max bs.data > @s bs.pos.z
