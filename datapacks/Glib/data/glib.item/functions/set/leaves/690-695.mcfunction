execute if score @s glib.itemId matches 690 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nether_quartz_ore","Count":1b}}
execute if score @s glib.itemId matches 691 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nether_sprouts","Count":1b}}
execute if score @s glib.itemId matches 692 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nether_star","Count":1b}}
execute if score @s glib.itemId matches 693 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nether_wart","Count":1b}}
execute if score @s glib.itemId matches 694 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:nether_wart_block","Count":1b}}
execute if score @s glib.itemId matches 695 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_axe","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
