execute if score @s bs.item.id matches 506 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_horse_armor","Count":1b}}
execute if score @s bs.item.id matches 507 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_ingot","Count":1b}}
execute if score @s bs.item.id matches 508 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_leggings","Count":1b}}
execute if score @s bs.item.id matches 509 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_nugget","Count":1b}}
execute if score @s bs.item.id matches 510 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_ore","Count":1b}}
execute if score @s bs.item.id matches 511 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_pickaxe","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
