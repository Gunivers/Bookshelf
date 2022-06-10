execute if score @s glib.itemId matches 970 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_button","Count":1b}}
execute if score @s glib.itemId matches 971 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_chest_boat","Count":1b}}
execute if score @s glib.itemId matches 972 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_door","Count":1b}}
execute if score @s glib.itemId matches 973 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:spruce_fence","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
