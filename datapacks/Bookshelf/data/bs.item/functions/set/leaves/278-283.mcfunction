execute if score @s bs.item.id matches 278 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_stairs","Count":1b}}
execute if score @s bs.item.id matches 279 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_trapdoor","Count":1b}}
execute if score @s bs.item.id matches 280 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_wood","Count":1b}}
execute if score @s bs.item.id matches 281 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_prismarine","Count":1b}}
execute if score @s bs.item.id matches 282 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_prismarine_slab","Count":1b}}
execute if score @s bs.item.id matches 283 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_prismarine_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
