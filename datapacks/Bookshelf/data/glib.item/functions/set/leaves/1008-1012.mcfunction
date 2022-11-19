execute if score @s bs.itemId matches 1008 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_acacia_wood","Count":1b}}
execute if score @s bs.itemId matches 1009 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_birch_log","Count":1b}}
execute if score @s bs.itemId matches 1010 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_birch_wood","Count":1b}}
execute if score @s bs.itemId matches 1011 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_crimson_hyphae","Count":1b}}
execute if score @s bs.itemId matches 1012 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_crimson_stem","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
