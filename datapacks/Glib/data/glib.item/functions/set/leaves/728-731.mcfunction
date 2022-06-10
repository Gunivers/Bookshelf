execute if score @s glib.itemId matches 728 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:ochre_froglight","Count":1b}}
execute if score @s glib.itemId matches 729 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_banner","Count":1b}}
execute if score @s glib.itemId matches 730 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_bed","Count":1b}}
execute if score @s glib.itemId matches 731 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:orange_candle","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
