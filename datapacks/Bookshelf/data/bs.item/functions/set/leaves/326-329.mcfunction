execute if score @s bs.item.id matches 326 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_hoe","Count":1b}}
execute if score @s bs.item.id matches 327 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_horse_armor","Count":1b}}
execute if score @s bs.item.id matches 328 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_leggings","Count":1b}}
execute if score @s bs.item.id matches 329 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
