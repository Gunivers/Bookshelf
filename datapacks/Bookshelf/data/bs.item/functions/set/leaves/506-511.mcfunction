execute if score @s bs.itemId matches 506 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_horse_armor","Count":1b}}
execute if score @s bs.itemId matches 507 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_ingot","Count":1b}}
execute if score @s bs.itemId matches 508 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_leggings","Count":1b}}
execute if score @s bs.itemId matches 509 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_nugget","Count":1b}}
execute if score @s bs.itemId matches 510 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_ore","Count":1b}}
execute if score @s bs.itemId matches 511 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_pickaxe","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
