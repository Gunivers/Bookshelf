# Position is added correctly
# @batch bs.position

summon minecraft:marker 0.0 0.0 0.0 {Tags:["packtest"],Rotation:[0.0,0.0]}

execute store result score @n[type=minecraft:marker,tag=packtest] bs.pos.x run random value -10000..10000
execute store result score @n[type=minecraft:marker,tag=packtest] bs.pos.y run random value -10000..10000
execute store result score @n[type=minecraft:marker,tag=packtest] bs.pos.z run random value -10000..10000
execute store result score @n[type=minecraft:marker,tag=packtest] bs.rot.h run random value -10000..10000
execute store result score @n[type=minecraft:marker,tag=packtest] bs.rot.v run random value -10000..10000
execute as @n[type=minecraft:marker,tag=packtest] run function #bs.position:add_pos_and_rot {scale:.001}

execute store result score #x bs.ctx run data get entity @n[type=minecraft:marker,tag=packtest] Pos[0] 1000
execute store result score #y bs.ctx run data get entity @n[type=minecraft:marker,tag=packtest] Pos[1] 1000
execute store result score #z bs.ctx run data get entity @n[type=minecraft:marker,tag=packtest] Pos[2] 1000
execute store result score #h bs.ctx run data get entity @n[type=minecraft:marker,tag=packtest] Rotation[0] 1000
execute store result score #v bs.ctx run data get entity @n[type=minecraft:marker,tag=packtest] Rotation[1] 1000

scoreboard players operation #x bs.ctx -= @n[type=minecraft:marker,tag=packtest] bs.pos.x
scoreboard players operation #y bs.ctx -= @n[type=minecraft:marker,tag=packtest] bs.pos.y
scoreboard players operation #z bs.ctx -= @n[type=minecraft:marker,tag=packtest] bs.pos.z
scoreboard players operation #h bs.ctx -= @n[type=minecraft:marker,tag=packtest] bs.rot.h
scoreboard players operation #v bs.ctx -= @n[type=minecraft:marker,tag=packtest] bs.rot.v

kill @n[type=minecraft:marker,tag=packtest]

assert score #x bs.ctx matches -2..2
assert score #y bs.ctx matches -2..2
assert score #z bs.ctx matches -2..2
assert score #h bs.ctx matches -2..2
assert score #v bs.ctx matches -2..2
