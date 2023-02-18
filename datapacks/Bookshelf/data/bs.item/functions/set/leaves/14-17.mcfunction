execute if score @s bs.itemId matches 14 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_trapdoor","Count":1b}}
execute if score @s bs.itemId matches 15 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:acacia_wood","Count":1b}}
execute if score @s bs.itemId matches 16 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:activator_rail","Count":1b}}
execute if score @s bs.itemId matches 17 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:air","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
