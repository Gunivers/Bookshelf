execute if score @s bs.itemId matches 358 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:enchanted_book","Count":1b}}
execute if score @s bs.itemId matches 359 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:enchanted_golden_apple","Count":1b}}
execute if score @s bs.itemId matches 360 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:enchanting_table","Count":1b}}
execute if score @s bs.itemId matches 361 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_crystal","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
