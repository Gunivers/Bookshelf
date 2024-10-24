# Imitate position and rotation
# @batch bs.link

await entity B5-0-0-0-1

summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["packtest","packtest.1"],NoGravity:1b}
summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["packtest","packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=packtest.2] at @e[type=minecraft:armor_stand,tag=packtest.1] run function #bs.link:create_link_ata

execute store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.rx run random value -10000..10000
execute store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.ry run random value -10000..10000
execute store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.rz run random value -10000..10000
execute store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.lh run random value -10000..10000
execute store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.lv run random value -10000..10000

execute as @e[type=minecraft:armor_stand,tag=packtest.2] run function #bs.link:imitate_pos_and_rot

execute store result score #x bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[0] 1000
execute store result score #y bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[1] 1000
execute store result score #z bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[2] 1000
execute store result score #h bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Rotation[0] 1000
execute store result score #v bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Rotation[1] 1000

scoreboard players operation #x bs.ctx -= @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.rx
scoreboard players operation #y bs.ctx -= @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.ry
scoreboard players operation #z bs.ctx -= @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.rz
scoreboard players operation #h bs.ctx -= @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.lh
scoreboard players operation #v bs.ctx -= @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.lv

kill @e[type=minecraft:armor_stand,tag=packtest]

assert score #x bs.ctx matches -2..2
assert score #y bs.ctx matches -2..2
assert score #z bs.ctx matches -2..2
assert score #h bs.ctx matches -2..2
assert score #v bs.ctx matches -2..2
