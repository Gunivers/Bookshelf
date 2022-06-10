execute if score @s glib.itemId matches 516 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jack_o_lantern","Count":1b}}
execute if score @s glib.itemId matches 517 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jigsaw","Count":1b}}
execute if score @s glib.itemId matches 518 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jukebox","Count":1b}}
execute if score @s glib.itemId matches 519 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:jungle_boat","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
