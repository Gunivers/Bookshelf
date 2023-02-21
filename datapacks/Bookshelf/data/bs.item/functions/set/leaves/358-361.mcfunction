execute if score @s bs.item.id matches 358 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:enchanted_book","Count":1b}}
execute if score @s bs.item.id matches 359 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:enchanted_golden_apple","Count":1b}}
execute if score @s bs.item.id matches 360 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:enchanting_table","Count":1b}}
execute if score @s bs.item.id matches 361 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:end_crystal","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
