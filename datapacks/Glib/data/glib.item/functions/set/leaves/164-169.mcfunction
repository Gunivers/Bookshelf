execute if score @s glib.itemId matches 164 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chest_minecart","Count":1b}}
execute if score @s glib.itemId matches 165 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chicken","Count":1b}}
execute if score @s glib.itemId matches 166 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chicken_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 167 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chipped_anvil","Count":1b}}
execute if score @s glib.itemId matches 168 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_deepslate","Count":1b}}
execute if score @s glib.itemId matches 169 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_nether_bricks","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
