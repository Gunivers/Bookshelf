# Reverse position and rotation
# @batch bs.link

await entity B5-0-0-0-1

summon minecraft:armor_stand 0.0 0.0 1.0 {Tags:["packtest","packtest.1"],NoGravity:1b}
summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["packtest","packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=packtest.2] at @e[type=minecraft:armor_stand,tag=packtest.1] run function #bs.link:create_link_ata

execute as @e[type=minecraft:armor_stand,tag=packtest.1] at @s run tp @s ~1 ~1 ~1 ~42 ~42
execute as @e[type=minecraft:armor_stand,tag=packtest.2] run function #bs.link:reverse_pos_and_rot

execute store result score #packtest.x bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[0] 1000
execute store result score #packtest.y bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[1] 1000
execute store result score #packtest.z bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Pos[2] 1000
execute store result score #packtest.h bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Rotation[0] 1000
execute store result score #packtest.v bs.data run data get entity @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] Rotation[1] 1000

kill @e[type=minecraft:armor_stand,tag=packtest]

assert score #packtest.x bs.data matches -1001..-999
assert score #packtest.y bs.data matches -1001..-999
assert score #packtest.z bs.data matches -1001..-999
assert score #packtest.h bs.data matches -42001..-41999
assert score #packtest.v bs.data matches -42001..-41999
