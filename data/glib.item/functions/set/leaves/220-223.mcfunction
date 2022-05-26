execute if score @s glib.itemId matches 220 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:creeper_banner_pattern","Count":1b}}
execute if score @s glib.itemId matches 221 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:creeper_head","Count":1b}}
execute if score @s glib.itemId matches 222 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:creeper_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 223 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_button","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
