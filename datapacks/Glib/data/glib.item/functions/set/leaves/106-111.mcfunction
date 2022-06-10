execute if score @s glib.itemId matches 106 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:bone","Count":1b}}
execute if score @s glib.itemId matches 107 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:bone_block","Count":1b}}
execute if score @s glib.itemId matches 108 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:bone_meal","Count":1b}}
execute if score @s glib.itemId matches 109 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:book","Count":1b}}
execute if score @s glib.itemId matches 110 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:bookshelf","Count":1b}}
execute if score @s glib.itemId matches 111 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:bow","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
