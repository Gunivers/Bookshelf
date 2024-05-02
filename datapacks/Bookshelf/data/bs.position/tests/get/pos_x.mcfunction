# Pos returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 run function #bs.position:get_pos_x {scale:10}

execute store result score #packtest.x_min bs.data store result score #packtest.x_max bs.data run data get entity @s Pos[0] 10

scoreboard players add #packtest.x_min bs.data 8
scoreboard players add #packtest.x_max bs.data 12

assert score #packtest.x_min bs.data < @s bs.pos.x
assert score #packtest.x_max bs.data > @s bs.pos.x
