# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score @s bs.rot.v run random value -10000..10000
function #bs.position:add_rot_v {scale:.001}
execute store result score #v bs.ctx run data get entity @s Rotation[1] 1000
scoreboard players operation #v bs.ctx -= @s bs.rot.v

assert score #v bs.ctx matches -2..2
