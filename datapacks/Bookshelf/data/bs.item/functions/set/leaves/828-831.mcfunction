execute if score @s bs.itemId matches 828 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pumpkin_pie","Count":1b}}
execute if score @s bs.itemId matches 829 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pumpkin_seeds","Count":1b}}
execute if score @s bs.itemId matches 830 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_banner","Count":1b}}
execute if score @s bs.itemId matches 831 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_bed","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
