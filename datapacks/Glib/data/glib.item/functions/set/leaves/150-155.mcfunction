execute if score @s glib.itemId matches 150 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:carrot_on_a_stick","Count":1b}}
execute if score @s glib.itemId matches 151 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cartography_table","Count":1b}}
execute if score @s glib.itemId matches 152 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:carved_pumpkin","Count":1b}}
execute if score @s glib.itemId matches 153 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cat_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 154 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cauldron","Count":1b}}
execute if score @s glib.itemId matches 155 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cave_spider_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
