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
scoreboard players set #packtest.i bs.cid 0
execute store result score #packtest bs.cid run scoreboard players operation #packtest.i bs.cid > @e bs.cid
execute as @e[type=minecraft:marker] if score @s bs.cid = #packtest.i bs.cid run scoreboard players remove #packtest.i bs.cid 1
execute as @e[type=minecraft:marker] if score @s bs.cid = #packtest.i bs.cid run scoreboard players remove #packtest.i bs.cid 1
execute as @e[type=minecraft:marker] if score @s bs.cid = #packtest.i bs.cid run scoreboard players remove #packtest.i bs.cid 1
execute as @e[type=minecraft:marker] if score @s bs.cid = #packtest.i bs.cid run scoreboard players remove #packtest.i bs.cid 1
scoreboard players operation #packtest bs.cid -= #packtest.i bs.cid
kill @e[type=minecraft:marker,distance=..1]
assert score #packtest bs.cid matches 4
