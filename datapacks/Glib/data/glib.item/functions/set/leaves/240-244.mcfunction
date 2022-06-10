execute if score @s glib.itemId matches 240 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crimson_trapdoor","Count":1b}}
execute if score @s glib.itemId matches 241 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crossbow","Count":1b}}
execute if score @s glib.itemId matches 242 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:crying_obsidian","Count":1b}}
execute if score @s glib.itemId matches 243 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cut_copper","Count":1b}}
execute if score @s glib.itemId matches 244 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:cut_copper_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
