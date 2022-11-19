execute if score @s bs.itemId matches 768 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_concrete","Count":1b}}
execute if score @s bs.itemId matches 769 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_concrete_powder","Count":1b}}
execute if score @s bs.itemId matches 770 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_dye","Count":1b}}
execute if score @s bs.itemId matches 771 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
