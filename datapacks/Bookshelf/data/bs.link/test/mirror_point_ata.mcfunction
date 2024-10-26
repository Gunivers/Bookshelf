# Mirror around a point
# @batch bs.link

summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["packtest","packtest.1"],NoGravity:1b,Rotation:[75f,12f]}
summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["packtest","packtest.2"],NoGravity:1b,Rotation:[0f,0f]}

execute as @e[type=minecraft:armor_stand,tag=packtest.2] at @e[type=minecraft:armor_stand,tag=packtest.1] run function #bs.link:create_link_ata
execute as @e[type=minecraft:armor_stand,tag=packtest.2] positioned .5 .5 .5 run function #bs.link:mirror_point_ata

execute store result score #x bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[0] 1000
execute store result score #y bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[1] 1000
execute store result score #z bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[2] 1000
execute store result score #h bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Rotation[0] 1000
execute store result score #v bs.ctx run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Rotation[1] 1000

kill @e[type=minecraft:armor_stand,tag=packtest]

assert score #x bs.ctx matches 999..1001
assert score #y bs.ctx matches 999..1001
assert score #z bs.ctx matches 999..1001
assert score #h bs.ctx matches -105001..-104999
assert score #v bs.ctx matches -12001..-11999
