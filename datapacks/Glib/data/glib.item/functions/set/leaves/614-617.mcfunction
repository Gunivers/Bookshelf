execute if score @s glib.itemId matches 614 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_terracotta","Count":1b}}
execute if score @s glib.itemId matches 615 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magenta_wool","Count":1b}}
execute if score @s glib.itemId matches 616 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magma_block","Count":1b}}
execute if score @s glib.itemId matches 617 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:magma_cream","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
