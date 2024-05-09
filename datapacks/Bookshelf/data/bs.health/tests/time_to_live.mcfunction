# A callback is run just before killing the entity
# @batch bs.health

scoreboard players set #packtest.ttl bs.data 0
summon minecraft:armor_stand ~ ~ ~ {Tags:["packtest"]}
execute as @e[type=minecraft:armor_stand,tag=packtest] run function #bs.health:time_to_live {with:{time:5,on_death:"scoreboard players set #packtest.ttl bs.data 1"}}
await delay 5t

assert score #packtest.ttl bs.data matches 1
assert not entity @e[type=minecraft:armor_stand,distance=..1] inside
