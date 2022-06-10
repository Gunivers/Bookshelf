execute if score @s glib.itemId matches 496 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:infested_stone_bricks","Count":1b}}
execute if score @s glib.itemId matches 497 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ink_sac","Count":1b}}
execute if score @s glib.itemId matches 498 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_axe","Count":1b}}
execute if score @s glib.itemId matches 499 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_bars","Count":1b}}
execute if score @s glib.itemId matches 500 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
