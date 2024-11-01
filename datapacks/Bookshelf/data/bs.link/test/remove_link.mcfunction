# Check link removal
# @batch bs.link

summon minecraft:armor_stand ~ ~ ~ {Tags:["bs.packtest","bs.packtest.1"],NoGravity:1b}
summon minecraft:armor_stand ~ ~1 ~ {Tags:["bs.packtest","bs.packtest.2"],NoGravity:1b}

# from parent
execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] at @e[type=minecraft:armor_stand,tag=bs.packtest.1] run function #bs.link:create_link_ata
execute as @e[type=minecraft:armor_stand,tag=bs.packtest.1] run function #bs.link:remove_link
assert not entity @e[type=minecraft:armor_stand,tag=bs.packtest.2,predicate=bs.link:has_link]

# from child
execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] at @e[type=minecraft:armor_stand,tag=bs.packtest.1] run function #bs.link:create_link_ata
execute as @e[type=minecraft:armor_stand,tag=bs.packtest.2] run function #bs.link:remove_link
assert not entity @e[type=minecraft:armor_stand,tag=bs.packtest.2,predicate=bs.link:has_link]
