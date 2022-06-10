execute if score @s glib.itemId matches 132 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_mushroom_block","Count":1b}}
execute if score @s glib.itemId matches 133 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_shulker_box","Count":1b}}
execute if score @s glib.itemId matches 134 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_stained_glass","Count":1b}}
execute if score @s glib.itemId matches 135 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:brown_stained_glass_pane","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
