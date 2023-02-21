execute if score @s bs.item.id matches 752 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:paper","Count":1b}}
execute if score @s bs.item.id matches 753 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:parrot_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 754 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pearlescent_froglight","Count":1b}}
execute if score @s bs.item.id matches 755 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:peony","Count":1b}}
execute if score @s bs.item.id matches 756 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:petrified_oak_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
