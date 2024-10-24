# Position is set correctly
# @batch bs.position
# @dummy

execute store result score @s bs.rot.v run random value -10000..10000
function #bs.position:set_rot {scale:.001}
execute store result score #v bs.ctx run data get entity @s Rotation[1] 1000
scoreboard players operation #v bs.ctx -= @s bs.rot.v

assert score #v bs.ctx matches -2..2
