execute if score @s bs.item.id matches 472 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gunpowder","Count":1b}}
execute if score @s bs.item.id matches 473 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:hanging_roots","Count":1b}}
execute if score @s bs.item.id matches 474 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:hay_block","Count":1b}}
execute if score @s bs.item.id matches 475 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:heart_of_the_sea","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
