execute if score @s bs.itemId matches 388 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:fire_coral_fan","Count":1b}}
execute if score @s bs.itemId matches 389 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:firework_rocket","Count":1b}}
execute if score @s bs.itemId matches 390 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:firework_star","Count":1b}}
execute if score @s bs.itemId matches 391 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:fishing_rod","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
