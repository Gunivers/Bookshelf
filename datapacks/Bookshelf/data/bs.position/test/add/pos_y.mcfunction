# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score @s bs.pos.y run random value -10000..10000
function #bs.position:add_pos_y {scale:.001}
execute store result score #y bs.ctx run data get entity @s Pos[1] 1000
scoreboard players operation #y bs.ctx -= @s bs.pos.y

assert score #y bs.ctx matches -2..2
