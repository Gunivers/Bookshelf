# Pos returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 run function #bs.position:get_pos {scale:10}

execute store result score #x bs.ctx run data get entity @s Pos[0] 10
execute store result score #y bs.ctx run data get entity @s Pos[1] 10
execute store result score #z bs.ctx run data get entity @s Pos[2] 10

scoreboard players operation #x bs.ctx -= @s bs.pos.x
scoreboard players operation #y bs.ctx -= @s bs.pos.y
scoreboard players operation #z bs.ctx -= @s bs.pos.z

assert score #x bs.ctx matches -11..-9
assert score #y bs.ctx matches -11..-9
assert score #z bs.ctx matches -11..-9
