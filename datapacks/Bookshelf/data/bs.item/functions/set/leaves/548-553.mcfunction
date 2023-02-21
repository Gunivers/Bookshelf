execute if score @s bs.item.id matches 548 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:leather_chestplate","Count":1b}}
execute if score @s bs.item.id matches 549 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:leather_helmet","Count":1b}}
execute if score @s bs.item.id matches 550 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:leather_horse_armor","Count":1b}}
execute if score @s bs.item.id matches 551 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:leather_leggings","Count":1b}}
execute if score @s bs.item.id matches 552 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lectern","Count":1b}}
execute if score @s bs.item.id matches 553 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lever","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
