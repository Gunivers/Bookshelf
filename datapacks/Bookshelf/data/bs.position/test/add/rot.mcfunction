# Position is added correctly
# @batch bs.position

summon minecraft:marker ~ ~ ~ {Tags:["bs.packtest"],Rotation:[0.0,0.0]}

execute store result score @n[type=minecraft:marker,tag=bs.packtest] bs.rot.h run random value -10000..10000
execute store result score @n[type=minecraft:marker,tag=bs.packtest] bs.rot.v run random value -10000..10000
execute as @n[type=minecraft:marker,tag=bs.packtest] run function #bs.position:add_rot {scale:.001}

execute store result score #h bs.ctx run data get entity @n[type=minecraft:marker,tag=bs.packtest] Rotation[0] 1000
execute store result score #v bs.ctx run data get entity @n[type=minecraft:marker,tag=bs.packtest] Rotation[1] 1000

scoreboard players operation #h bs.ctx -= @n[type=minecraft:marker,tag=bs.packtest] bs.rot.h
scoreboard players operation #v bs.ctx -= @n[type=minecraft:marker,tag=bs.packtest] bs.rot.v

kill @n[type=minecraft:marker,tag=bs.packtest]

assert score #h bs.ctx matches -2..2
assert score #v bs.ctx matches -2..2
