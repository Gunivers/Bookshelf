# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score @s bs.pos.z run random value -10000..10000
function #bs.position:add_pos_z {scale:.001}
execute store result score #z bs.ctx run data get entity @s Pos[2] 1000
scoreboard players operation #z bs.ctx -= @s bs.pos.z

assert score #z bs.ctx matches -2..2
