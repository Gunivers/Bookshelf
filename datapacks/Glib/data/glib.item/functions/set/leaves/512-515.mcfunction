execute if score @s glib.itemId matches 512 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_shovel","Count":1b}}
execute if score @s glib.itemId matches 513 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_sword","Count":1b}}
execute if score @s glib.itemId matches 514 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:iron_trapdoor","Count":1b}}
execute if score @s glib.itemId matches 515 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:item_frame","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
