execute if score @s bs.itemId matches 738 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_stained_glass","Count":1b}}
execute if score @s bs.itemId matches 739 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_stained_glass_pane","Count":1b}}
execute if score @s bs.itemId matches 740 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_terracotta","Count":1b}}
execute if score @s bs.itemId matches 741 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_tulip","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
