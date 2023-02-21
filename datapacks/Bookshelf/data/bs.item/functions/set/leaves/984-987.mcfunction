execute if score @s bs.item.id matches 984 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:spruce_wood","Count":1b}}
execute if score @s bs.item.id matches 985 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:spyglass","Count":1b}}
execute if score @s bs.item.id matches 986 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:squid_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 987 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stick","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
