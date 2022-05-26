execute if score @s glib.itemId matches 166 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_nether_bricks","Count":1b}}
execute if score @s glib.itemId matches 167 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_polished_blackstone","Count":1b}}
execute if score @s glib.itemId matches 168 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_quartz_block","Count":1b}}
execute if score @s glib.itemId matches 169 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_red_sandstone","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
