execute if score @s bs.item.id matches 814 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:powered_rail","Count":1b}}
execute if score @s bs.item.id matches 815 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine","Count":1b}}
execute if score @s bs.item.id matches 816 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine_brick_slab","Count":1b}}
execute if score @s bs.item.id matches 817 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:prismarine_brick_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
