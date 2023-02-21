execute if score @s bs.item.id matches 644 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mooshroom_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 645 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:moss_block","Count":1b}}
execute if score @s bs.item.id matches 646 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:moss_carpet","Count":1b}}
execute if score @s bs.item.id matches 647 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mossy_cobblestone","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
