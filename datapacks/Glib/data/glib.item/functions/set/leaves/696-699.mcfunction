execute if score @s glib.itemId matches 696 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_block","Count":1b}}
execute if score @s glib.itemId matches 697 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_boots","Count":1b}}
execute if score @s glib.itemId matches 698 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_chestplate","Count":1b}}
execute if score @s glib.itemId matches 699 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:netherite_helmet","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
