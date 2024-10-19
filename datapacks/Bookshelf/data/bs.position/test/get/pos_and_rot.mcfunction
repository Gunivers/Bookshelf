# Pos and rot returns correct values
# @batch bs.position
# @dummy

execute at @s positioned ~1 ~1 ~1 rotated ~1 ~1 run function #bs.position:get_pos_and_rot {scale:10}

execute store result score #x bs.ctx run data get entity @s Pos[0] 10
execute store result score #y bs.ctx run data get entity @s Pos[1] 10
execute store result score #z bs.ctx run data get entity @s Pos[2] 10
execute store result score #h bs.ctx run data get entity @s Rotation[0] 10
execute store result score #v bs.ctx run data get entity @s Rotation[1] 10

scoreboard players operation #x bs.ctx -= @s bs.pos.x
scoreboard players operation #y bs.ctx -= @s bs.pos.y
scoreboard players operation #z bs.ctx -= @s bs.pos.z
scoreboard players operation #h bs.ctx -= @s bs.rot.h
scoreboard players operation #v bs.ctx -= @s bs.rot.v

assert score #x bs.ctx matches -11..-9
assert score #y bs.ctx matches -11..-9
assert score #z bs.ctx matches -11..-9
assert score #h bs.ctx matches -11..-9
assert score #v bs.ctx matches -11..-9
