execute if score @s glib.itemId matches 170 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_polished_blackstone","Count":1b}}
execute if score @s glib.itemId matches 171 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_quartz_block","Count":1b}}
execute if score @s glib.itemId matches 172 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_red_sandstone","Count":1b}}
execute if score @s glib.itemId matches 173 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:chiseled_sandstone","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
