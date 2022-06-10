execute if score @s glib.itemId matches 206 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_cod","Count":1b}}
execute if score @s glib.itemId matches 207 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_mutton","Count":1b}}
execute if score @s glib.itemId matches 208 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_porkchop","Count":1b}}
execute if score @s glib.itemId matches 209 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_rabbit","Count":1b}}
execute if score @s glib.itemId matches 210 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_salmon","Count":1b}}
execute if score @s glib.itemId matches 211 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cookie","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
