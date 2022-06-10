execute if score @s glib.itemId matches 1126 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wooden_axe","Count":1b}}
execute if score @s glib.itemId matches 1127 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wooden_hoe","Count":1b}}
execute if score @s glib.itemId matches 1128 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wooden_pickaxe","Count":1b}}
execute if score @s glib.itemId matches 1129 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:wooden_shovel","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
