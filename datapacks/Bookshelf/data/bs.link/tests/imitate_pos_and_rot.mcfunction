# Imitate position and rotation
# @batch bs.link

summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["packtest","packtest.1"],NoGravity:1b}
summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["packtest","packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=packtest.2] at @e[type=minecraft:armor_stand,tag=packtest.1] run function #bs.link:create_link_ata

execute store result score #packtest.x_min bs.data store result score #packtest.x_max bs.data store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.rx run random value -10000..10000
execute store result score #packtest.y_min bs.data store result score #packtest.y_max bs.data store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.ry run random value -10000..10000
execute store result score #packtest.z_min bs.data store result score #packtest.z_max bs.data store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.rz run random value -10000..10000
execute store result score #packtest.h_min bs.data store result score #packtest.h_max bs.data store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.lh run random value -10000..10000
execute store result score #packtest.v_min bs.data store result score #packtest.v_max bs.data store result score @e[type=minecraft:armor_stand,tag=packtest.2] bs.link.lv run random value -10000..10000

execute as @e[type=minecraft:armor_stand,tag=packtest.2] run function #bs.link:imitate_pos_and_rot

execute store result score #packtest.x bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[0] 1000
execute store result score #packtest.y bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[1] 1000
execute store result score #packtest.z bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[2] 1000
execute store result score #packtest.h bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Rotation[0] 1000
execute store result score #packtest.v bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Rotation[1] 1000

kill @e[type=minecraft:armor_stand,tag=packtest]

scoreboard players remove #packtest.x_min bs.data 2
scoreboard players remove #packtest.y_min bs.data 2
scoreboard players remove #packtest.z_min bs.data 2
scoreboard players remove #packtest.h_min bs.data 2
scoreboard players remove #packtest.v_min bs.data 2
scoreboard players add #packtest.x_max bs.data 2
scoreboard players add #packtest.y_max bs.data 2
scoreboard players add #packtest.z_max bs.data 2
scoreboard players add #packtest.h_max bs.data 2
scoreboard players add #packtest.v_max bs.data 2

assert score #packtest.x_min bs.data < #packtest.x bs.data
assert score #packtest.y_min bs.data < #packtest.y bs.data
assert score #packtest.z_min bs.data < #packtest.z bs.data
assert score #packtest.h_min bs.data < #packtest.h bs.data
assert score #packtest.v_min bs.data < #packtest.v bs.data
assert score #packtest.x_max bs.data > #packtest.x bs.data
assert score #packtest.y_max bs.data > #packtest.y bs.data
assert score #packtest.z_max bs.data > #packtest.z bs.data
assert score #packtest.h_max bs.data > #packtest.h bs.data
assert score #packtest.v_max bs.data > #packtest.v bs.data
