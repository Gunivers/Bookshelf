# A callback is run just before killing the entity
# @batch bs.health

scoreboard players set #t bs.ctx 0
summon minecraft:armor_stand ~ ~ ~ {Tags:["packtest"]}
execute as @e[type=minecraft:armor_stand,tag=packtest] run function #bs.health:time_to_live {with:{time:5,on_death:"scoreboard players set #t bs.ctx 1"}}
await delay 5t

assert score #t bs.ctx matches 1
assert not entity @e[type=minecraft:armor_stand,distance=..1] inside
