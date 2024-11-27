# Position is set correctly
# @batch bs.position
# @dummy

execute store result score @s bs.pos.y run random value -10000..10000
function #bs.position:set_pos_y {scale:.001}
execute store result score #y bs.ctx run data get entity @s Pos[1] 1000
scoreboard players operation #y bs.ctx -= @s bs.pos.y

assert score #y bs.ctx matches -2..2
