execute if score @s glib.itemId matches 634 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_trapdoor","Count":1b}}
execute if score @s glib.itemId matches 635 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:mangrove_wood","Count":1b}}
execute if score @s glib.itemId matches 636 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:map","Count":1b}}
execute if score @s glib.itemId matches 637 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:medium_amethyst_bud","Count":1b}}
execute if score @s glib.itemId matches 638 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:melon","Count":1b}}
execute if score @s glib.itemId matches 639 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:melon_seeds","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
