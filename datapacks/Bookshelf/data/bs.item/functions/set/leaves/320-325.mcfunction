execute if score @s bs.item.id matches 320 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond","Count":1b}}
execute if score @s bs.item.id matches 321 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_axe","Count":1b}}
execute if score @s bs.item.id matches 322 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_block","Count":1b}}
execute if score @s bs.item.id matches 323 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_boots","Count":1b}}
execute if score @s bs.item.id matches 324 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_chestplate","Count":1b}}
execute if score @s bs.item.id matches 325 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diamond_helmet","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
