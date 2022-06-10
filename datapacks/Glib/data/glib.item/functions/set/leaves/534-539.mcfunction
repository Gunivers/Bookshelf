execute if score @s glib.itemId matches 534 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_wood","Count":1b}}
execute if score @s glib.itemId matches 535 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:kelp","Count":1b}}
execute if score @s glib.itemId matches 536 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:knowledge_book","Count":1b}}
execute if score @s glib.itemId matches 537 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ladder","Count":1b}}
execute if score @s glib.itemId matches 538 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lantern","Count":1b}}
execute if score @s glib.itemId matches 539 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lapis_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
