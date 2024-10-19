# Position is set correctly
# @batch bs.position
# @dummy

execute store result score @s bs.rot.h run random value -10000..10000
execute store result score @s bs.rot.v run random value -10000..10000
function #bs.position:set_rot {scale:.001}

execute store result score #h bs.ctx run data get entity @s Rotation[0] 1000
execute store result score #v bs.ctx run data get entity @s Rotation[1] 1000

scoreboard players operation #h bs.ctx -= @s bs.rot.h
scoreboard players operation #v bs.ctx -= @s bs.rot.v

assert score #h bs.ctx matches -2..2
assert score #v bs.ctx matches -2..2
