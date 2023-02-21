execute if score @s bs.item.id matches 690 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_quartz_ore","Count":1b}}
execute if score @s bs.item.id matches 691 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_sprouts","Count":1b}}
execute if score @s bs.item.id matches 692 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_star","Count":1b}}
execute if score @s bs.item.id matches 693 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_wart","Count":1b}}
execute if score @s bs.item.id matches 694 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:nether_wart_block","Count":1b}}
execute if score @s bs.item.id matches 695 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_axe","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
