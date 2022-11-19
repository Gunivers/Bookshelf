execute if score @s bs.itemId matches 274 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_pressure_plate","Count":1b}}
execute if score @s bs.itemId matches 275 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_sapling","Count":1b}}
execute if score @s bs.itemId matches 276 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_sign","Count":1b}}
execute if score @s bs.itemId matches 277 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
