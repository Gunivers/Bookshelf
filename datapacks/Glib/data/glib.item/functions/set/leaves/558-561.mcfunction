execute if score @s glib.itemId matches 558 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_blue_carpet","Count":1b}}
execute if score @s glib.itemId matches 559 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_blue_concrete","Count":1b}}
execute if score @s glib.itemId matches 560 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_blue_concrete_powder","Count":1b}}
execute if score @s glib.itemId matches 561 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:light_blue_dye","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
