execute if score @s bs.itemId matches 174 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chiseled_stone_bricks","Count":1b}}
execute if score @s bs.itemId matches 175 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chorus_flower","Count":1b}}
execute if score @s bs.itemId matches 176 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chorus_fruit","Count":1b}}
execute if score @s bs.itemId matches 177 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chorus_plant","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
