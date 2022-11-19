execute if score @s bs.itemId matches 742 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_wool","Count":1b}}
execute if score @s bs.itemId matches 743 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oxeye_daisy","Count":1b}}
execute if score @s bs.itemId matches 744 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oxidized_copper","Count":1b}}
execute if score @s bs.itemId matches 745 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oxidized_cut_copper","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
