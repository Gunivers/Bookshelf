# Keep the local position
# @batch bs.link

summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["bs.packtest","bs.packtest.1"],NoGravity:1b}
summon minecraft:armor_stand 0.0 0.0 1.0 {Tags:["bs.packtest","bs.packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] at @e[type=minecraft:armor_stand,tag=bs.packtest.1] run function #bs.link:create_link_ata
tp @e[type=minecraft:armor_stand,tag=bs.packtest.1] 0.0 0.0 0.0 52 -12
execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] run function #bs.link:keep_local_pos

execute as @e[type=minecraft:armor_stand,tag=bs.packtest.1] at @s positioned ^ ^ ^1 run assert entity @e[type=minecraft:armor_stand,tag=bs.packtest.2,distance=..0.002]

kill @e[type=minecraft:armor_stand,tag=bs.packtest]
