execute if score @s bs.itemId matches 772 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_shulker_box","Count":1b}}
execute if score @s bs.itemId matches 773 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_stained_glass","Count":1b}}
execute if score @s bs.itemId matches 774 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_stained_glass_pane","Count":1b}}
execute if score @s bs.itemId matches 775 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
