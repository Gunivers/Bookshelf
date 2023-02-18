execute if score @s bs.itemId matches 150 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:carrot_on_a_stick","Count":1b}}
execute if score @s bs.itemId matches 151 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cartography_table","Count":1b}}
execute if score @s bs.itemId matches 152 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:carved_pumpkin","Count":1b}}
execute if score @s bs.itemId matches 153 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cat_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 154 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cauldron","Count":1b}}
execute if score @s bs.itemId matches 155 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cave_spider_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
