# Linking entities together
# @batch bs.link

await entity B5-0-0-0-1

summon minecraft:armor_stand 0.0 0.0 0.0 {Tags:["packtest","packtest.1"],NoGravity:1b}
summon minecraft:armor_stand 0.5 0.2 1.0 {Tags:["packtest","packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=packtest.2] at @e[type=minecraft:armor_stand,tag=packtest.1] run function #bs.link:create_link_ata

assert entity @e[type=minecraft:armor_stand,tag=packtest.2,predicate=bs.link:has_link]
assert score @e[type=minecraft:armor_stand,tag=packtest.1,limit=1] bs.id = @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.to
assert score @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.rx matches 499..501
assert score @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.ry matches 199..201
assert score @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.rz matches 999..1001
assert score @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.lx matches 499..501
assert score @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.ly matches 199..201
assert score @e[type=minecraft:armor_stand,tag=packtest.2,limit=1] bs.link.lz matches 999..1001

kill @e[type=minecraft:armor_stand,tag=packtest]
