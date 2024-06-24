# Pos returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 run function #bs.position:get_pos_y {scale:10}

execute store result score #packtest.y_min bs.data store result score #packtest.y_max bs.data run data get entity @s Pos[1] 10

scoreboard players add #packtest.y_min bs.data 8
scoreboard players add #packtest.y_max bs.data 12

assert score #packtest.y_min bs.data < @s bs.pos.y
assert score #packtest.y_max bs.data > @s bs.pos.y
