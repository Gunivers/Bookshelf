execute if score @s bs.itemId matches 226 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_button","Count":1b}}
execute if score @s bs.itemId matches 227 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_door","Count":1b}}
execute if score @s bs.itemId matches 228 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_fence","Count":1b}}
execute if score @s bs.itemId matches 229 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:crimson_fence_gate","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
