# Check at parent relationship
# @batch bs.link

summon minecraft:armor_stand ~ ~ ~ {Tags:["packtest","packtest.1"],NoGravity:1b}
summon minecraft:armor_stand ~ ~1 ~ {Tags:["packtest","packtest.2"],NoGravity:1b}

execute as @e[type=minecraft:armor_stand,tag=packtest.2] at @e[type=minecraft:armor_stand,tag=packtest.1] run function #bs.link:create_link_ata
execute as @e[type=minecraft:armor_stand,tag=packtest.2] run function #bs.link:at_parent {run:"tag @n add packtest.check"}
assert entity @e[type=minecraft:armor_stand,tag=packtest.1,tag=packtest.check]