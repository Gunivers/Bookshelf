execute if score @s bs.itemId matches 1070 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_fungus_on_a_stick","Count":1b}}
execute if score @s bs.itemId matches 1071 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_hyphae","Count":1b}}
execute if score @s bs.itemId matches 1072 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_nylium","Count":1b}}
execute if score @s bs.itemId matches 1073 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:warped_planks","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
