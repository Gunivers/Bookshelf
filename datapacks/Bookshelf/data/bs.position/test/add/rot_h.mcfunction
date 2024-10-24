# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score @s bs.rot.h run random value -10000..10000
function #bs.position:add_rot_h {scale:.001}
execute store result score #h bs.ctx run data get entity @s Rotation[0] 1000
scoreboard players operation #h bs.ctx -= @s bs.rot.h

assert score #h bs.ctx matches -2..2
