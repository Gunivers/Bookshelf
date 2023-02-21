execute if score @s bs.item.id matches 354 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:elytra","Count":1b}}
execute if score @s bs.item.id matches 355 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:emerald","Count":1b}}
execute if score @s bs.item.id matches 356 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:emerald_block","Count":1b}}
execute if score @s bs.item.id matches 357 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:emerald_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
