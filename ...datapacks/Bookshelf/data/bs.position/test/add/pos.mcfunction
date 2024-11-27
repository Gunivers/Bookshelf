# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score @s bs.pos.x run random value -10000..10000
execute store result score @s bs.pos.y run random value -10000..10000
execute store result score @s bs.pos.z run random value -10000..10000
function #bs.position:add_pos {scale:.001}

execute store result score #x bs.ctx run data get entity @s Pos[0] 1000
execute store result score #y bs.ctx run data get entity @s Pos[1] 1000
execute store result score #z bs.ctx run data get entity @s Pos[2] 1000

scoreboard players operation #x bs.ctx -= @s bs.pos.x
scoreboard players operation #y bs.ctx -= @s bs.pos.y
scoreboard players operation #z bs.ctx -= @s bs.pos.z

assert score #x bs.ctx matches -2..2
assert score #y bs.ctx matches -2..2
assert score #z bs.ctx matches -2..2
