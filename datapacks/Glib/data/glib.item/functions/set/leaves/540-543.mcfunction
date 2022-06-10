execute if score @s glib.itemId matches 540 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lapis_lazuli","Count":1b}}
execute if score @s glib.itemId matches 541 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:lapis_ore","Count":1b}}
execute if score @s glib.itemId matches 542 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:large_amethyst_bud","Count":1b}}
execute if score @s glib.itemId matches 543 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:large_fern","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
