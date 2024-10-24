# Pos returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 run function #bs.position:get_pos_x {scale:10}

execute store result score #x bs.ctx run data get entity @s Pos[0] 10
scoreboard players operation #x bs.ctx -= @s bs.pos.x

assert score #x bs.ctx matches -11..-9
