execute if score @s bs.item.id matches 501 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_boots","Count":1b}}
execute if score @s bs.item.id matches 502 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_chestplate","Count":1b}}
execute if score @s bs.item.id matches 503 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_door","Count":1b}}
execute if score @s bs.item.id matches 504 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_helmet","Count":1b}}
execute if score @s bs.item.id matches 505 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_hoe","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
