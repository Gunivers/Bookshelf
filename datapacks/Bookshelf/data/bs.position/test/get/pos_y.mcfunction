# Pos returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 run function #bs.position:get_pos_y {scale:10}

execute store result score #y bs.ctx run data get entity @s Pos[1] 10
scoreboard players operation #y bs.ctx -= @s bs.pos.y

assert score #y bs.ctx matches -11..-9
