execute if score @s glib.itemId matches 192 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobblestone_wall","Count":1b}}
execute if score @s glib.itemId matches 193 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cobweb","Count":1b}}
execute if score @s glib.itemId matches 194 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cocoa_beans","Count":1b}}
execute if score @s glib.itemId matches 195 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cod","Count":1b}}
execute if score @s glib.itemId matches 196 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cod_bucket","Count":1b}}
execute if score @s glib.itemId matches 197 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cod_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
