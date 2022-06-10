execute if score @s glib.itemId matches 700 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_hoe","Count":1b}}
execute if score @s glib.itemId matches 701 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_ingot","Count":1b}}
execute if score @s glib.itemId matches 702 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_leggings","Count":1b}}
execute if score @s glib.itemId matches 703 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_pickaxe","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
