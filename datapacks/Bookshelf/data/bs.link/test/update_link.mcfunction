# Update the link
# @batch bs.link

summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["bs.packtest","bs.packtest.1"],NoGravity:1b}
summon minecraft:armor_stand 0.5 0.2 1.0 {Tags:["bs.packtest","bs.packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=bs.packtest.1] run function #bs.id:give_suid
scoreboard players operation @e[type=minecraft:armor_stand,tag=bs.packtest.2] bs.link.to = @e[type=minecraft:armor_stand,tag=bs.packtest.1] bs.id
execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] run function #bs.link:update_link

assert score @e[type=minecraft:armor_stand,tag=bs.packtest.2,limit=1] bs.link.rx matches 499..501
assert score @e[type=minecraft:armor_stand,tag=bs.packtest.2,limit=1] bs.link.ry matches 199..201
assert score @e[type=minecraft:armor_stand,tag=bs.packtest.2,limit=1] bs.link.rz matches 999..1001
assert score @e[type=minecraft:armor_stand,tag=bs.packtest.2,limit=1] bs.link.lx matches 499..501
assert score @e[type=minecraft:armor_stand,tag=bs.packtest.2,limit=1] bs.link.ly matches 199..201
assert score @e[type=minecraft:armor_stand,tag=bs.packtest.2,limit=1] bs.link.lz matches 999..1001

kill @e[type=minecraft:armor_stand,tag=bs.packtest]
