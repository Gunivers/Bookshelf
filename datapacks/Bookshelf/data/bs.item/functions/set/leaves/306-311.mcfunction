execute if score @s bs.itemId matches 306 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_bricks","Count":1b}}
execute if score @s bs.itemId matches 307 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_coal_ore","Count":1b}}
execute if score @s bs.itemId matches 308 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_copper_ore","Count":1b}}
execute if score @s bs.itemId matches 309 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_diamond_ore","Count":1b}}
execute if score @s bs.itemId matches 310 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_emerald_ore","Count":1b}}
execute if score @s bs.itemId matches 311 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_gold_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
