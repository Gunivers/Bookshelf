# Rot returns correct values
# @batch bs.position
# @dummy

execute at @s rotated ~1 ~1 run function #bs.position:get_rot_v {scale:10}

execute store result score #v bs.ctx run data get entity @s Rotation[1] 10
scoreboard players operation #v bs.ctx -= @s bs.rot.v

assert score #v bs.ctx matches -11..-9
