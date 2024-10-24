# Pos returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 run function #bs.position:get_pos_z {scale:10}

execute store result score #z bs.ctx run data get entity @s Pos[2] 10
scoreboard players operation #z bs.ctx -= @s bs.pos.z

assert score #z bs.ctx matches -11..-9
