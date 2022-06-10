execute if score @s glib.itemId matches 960 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:soul_soil","Count":1b}}
execute if score @s glib.itemId matches 961 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:soul_torch","Count":1b}}
execute if score @s glib.itemId matches 962 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spawner","Count":1b}}
execute if score @s glib.itemId matches 963 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spectral_arrow","Count":1b}}
execute if score @s glib.itemId matches 964 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spider_eye","Count":1b}}
execute if score @s glib.itemId matches 965 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spider_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
