# Teleport an entity by canonical velocity
# @batch bs.move
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score #packtest.x_min bs.data store result score #packtest.x_max bs.data store result score @s bs.vel.x run random value -1000..1000
execute store result score #packtest.y_min bs.data store result score #packtest.y_max bs.data store result score @s bs.vel.y run random value -1000..1000
execute store result score #packtest.z_min bs.data store result score #packtest.z_max bs.data store result score @s bs.vel.z run random value -1000..1000

function #bs.move:apply_vel {scale:0.001,with:{blocks:0b,entities:0b}}

execute store result score #packtest.x bs.data run data get entity @s Pos[0] 1000
execute store result score #packtest.y bs.data run data get entity @s Pos[1] 1000
execute store result score #packtest.z bs.data run data get entity @s Pos[2] 1000

dummy @s leave

scoreboard players remove #packtest.x_min bs.data 2
scoreboard players remove #packtest.y_min bs.data 2
scoreboard players remove #packtest.z_min bs.data 2
scoreboard players add #packtest.x_max bs.data 2
scoreboard players add #packtest.y_max bs.data 2
scoreboard players add #packtest.z_max bs.data 2

assert score #packtest.x_min bs.data < #packtest.x bs.data
assert score #packtest.y_min bs.data < #packtest.y bs.data
assert score #packtest.z_min bs.data < #packtest.z bs.data
assert score #packtest.x_max bs.data > #packtest.x bs.data
assert score #packtest.y_max bs.data > #packtest.y bs.data
assert score #packtest.z_max bs.data > #packtest.z bs.data
