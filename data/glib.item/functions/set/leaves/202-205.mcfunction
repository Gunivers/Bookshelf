execute if score @s glib.itemId matches 202 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_chicken","Count":1b}}
execute if score @s glib.itemId matches 203 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_cod","Count":1b}}
execute if score @s glib.itemId matches 204 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_mutton","Count":1b}}
execute if score @s glib.itemId matches 205 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cooked_porkchop","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
