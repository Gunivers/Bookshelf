execute if score @s glib.itemId matches 600 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:llama_spawn_egg","Count":1b}}
execute if score @s glib.itemId matches 601 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lodestone","Count":1b}}
execute if score @s glib.itemId matches 602 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:loom","Count":1b}}
execute if score @s glib.itemId matches 603 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_banner","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
