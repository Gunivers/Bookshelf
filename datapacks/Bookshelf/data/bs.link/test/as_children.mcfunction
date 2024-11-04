# Check as children relationship
# @batch bs.link

summon minecraft:armor_stand ~ ~ ~ {Tags:["bs.packtest","bs.packtest.1"],NoGravity:1b}
summon minecraft:armor_stand ~ ~1 ~ {Tags:["bs.packtest","bs.packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] at @e[type=minecraft:armor_stand,tag=bs.packtest.1] run function #bs.link:create_link_ata
execute as @e[type=minecraft:armor_stand,tag=bs.packtest.1] run function #bs.link:as_children {run:"tag @s add bs.packtest.check"}
assert entity @e[type=minecraft:armor_stand,tag=bs.packtest.2,tag=bs.packtest.check]
