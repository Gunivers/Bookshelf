execute if score @s bs.itemId matches 572 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_concrete","Count":1b}}
execute if score @s bs.itemId matches 573 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_concrete_powder","Count":1b}}
execute if score @s bs.itemId matches 574 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_dye","Count":1b}}
execute if score @s bs.itemId matches 575 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:light_gray_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
