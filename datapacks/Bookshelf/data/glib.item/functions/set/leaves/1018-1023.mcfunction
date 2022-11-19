execute if score @s bs.itemId matches 1018 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_mangrove_wood","Count":1b}}
execute if score @s bs.itemId matches 1019 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_oak_log","Count":1b}}
execute if score @s bs.itemId matches 1020 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_oak_wood","Count":1b}}
execute if score @s bs.itemId matches 1021 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_spruce_log","Count":1b}}
execute if score @s bs.itemId matches 1022 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_spruce_wood","Count":1b}}
execute if score @s bs.itemId matches 1023 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_warped_hyphae","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
