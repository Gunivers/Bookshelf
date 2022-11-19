execute if score @s bs.itemId matches 234 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_pressure_plate","Count":1b}}
execute if score @s bs.itemId matches 235 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_roots","Count":1b}}
execute if score @s bs.itemId matches 236 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_sign","Count":1b}}
execute if score @s bs.itemId matches 237 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_slab","Count":1b}}
execute if score @s bs.itemId matches 238 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_stairs","Count":1b}}
execute if score @s bs.itemId matches 239 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_stem","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
