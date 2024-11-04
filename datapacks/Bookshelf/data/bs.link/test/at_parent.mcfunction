# Check at parent relationship
# @batch bs.link

summon minecraft:armor_stand ~ ~ ~ {Tags:["bs.packtest","bs.packtest.1"],NoGravity:1b}
summon minecraft:armor_stand ~ ~1 ~ {Tags:["bs.packtest","bs.packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] at @e[type=minecraft:armor_stand,tag=bs.packtest.1] run function #bs.link:create_link_ata
execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] run function #bs.link:at_parent {run:"tag @n add bs.packtest.check"}
assert entity @e[type=minecraft:armor_stand,tag=bs.packtest.1,tag=bs.packtest.check]
