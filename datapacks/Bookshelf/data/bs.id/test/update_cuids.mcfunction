# Updating cuids always returns a continuous chain
# @batch bs.id

execute summon minecraft:marker run function #bs.id:give_cuid
execute summon minecraft:armor_stand run function #bs.id:give_cuid
execute summon minecraft:armor_stand run function #bs.id:give_cuid
execute summon minecraft:marker run function #bs.id:give_cuid
execute summon minecraft:marker run function #bs.id:give_cuid
execute summon minecraft:armor_stand run function #bs.id:give_cuid
execute summon minecraft:marker run function #bs.id:give_cuid
kill @e[type=minecraft:armor_stand,distance=..1]

function #bs.id:update_cuids
scoreboard players set #packtest.i bs.data 0
execute store result score #packtest bs.data run scoreboard players operation #packtest.i bs.data > @e bs.cid
execute as @e[type=minecraft:marker] if score @s bs.cid = #packtest.i bs.data run scoreboard players remove #packtest.i bs.data 1
execute as @e[type=minecraft:marker] if score @s bs.cid = #packtest.i bs.data run scoreboard players remove #packtest.i bs.data 1
execute as @e[type=minecraft:marker] if score @s bs.cid = #packtest.i bs.data run scoreboard players remove #packtest.i bs.data 1
execute as @e[type=minecraft:marker] if score @s bs.cid = #packtest.i bs.data run scoreboard players remove #packtest.i bs.data 1
scoreboard players operation #packtest bs.data -= #packtest.i bs.data
kill @e[type=minecraft:marker,distance=..1]
assert score #packtest bs.data matches 4
