# Rot returns correct values
# @batch bs.position
# @dummy

execute at @s rotated ~1 ~1 run function #bs.position:get_rot_h {scale:10}

execute store result score #h bs.ctx run data get entity @s Rotation[0] 10
scoreboard players operation #h bs.ctx -= @s bs.rot.h

assert score #h bs.ctx matches -11..-9
