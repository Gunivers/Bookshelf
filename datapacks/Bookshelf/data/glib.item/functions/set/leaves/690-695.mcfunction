execute if score @s bs.itemId matches 690 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_quartz_ore","Count":1b}}
execute if score @s bs.itemId matches 691 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_sprouts","Count":1b}}
execute if score @s bs.itemId matches 692 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_star","Count":1b}}
execute if score @s bs.itemId matches 693 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_wart","Count":1b}}
execute if score @s bs.itemId matches 694 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_wart_block","Count":1b}}
execute if score @s bs.itemId matches 695 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_axe","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
