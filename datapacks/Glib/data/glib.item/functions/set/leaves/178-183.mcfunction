execute if score @s glib.itemId matches 178 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:clay","Count":1b}}
execute if score @s glib.itemId matches 179 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:clay_ball","Count":1b}}
execute if score @s glib.itemId matches 180 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:clock","Count":1b}}
execute if score @s glib.itemId matches 181 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:coal","Count":1b}}
execute if score @s glib.itemId matches 182 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:coal_block","Count":1b}}
execute if score @s glib.itemId matches 183 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:coal_ore","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
