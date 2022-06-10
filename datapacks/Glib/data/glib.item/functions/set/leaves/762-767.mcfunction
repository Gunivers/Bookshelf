execute if score @s glib.itemId matches 762 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:piglin_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 763 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pillager_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 764 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_banner","Count":1b}}
execute if score @s glib.itemId matches 765 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_bed","Count":1b}}
execute if score @s glib.itemId matches 766 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_candle","Count":1b}}
execute if score @s glib.itemId matches 767 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:pink_carpet","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
