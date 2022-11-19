execute if score @s bs.itemId matches 230 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_fungus","Count":1b}}
execute if score @s bs.itemId matches 231 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_hyphae","Count":1b}}
execute if score @s bs.itemId matches 232 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_nylium","Count":1b}}
execute if score @s bs.itemId matches 233 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
