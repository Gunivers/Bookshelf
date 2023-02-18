execute if score @s bs.itemId matches 260 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_stained_glass_pane","Count":1b}}
execute if score @s bs.itemId matches 261 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_terracotta","Count":1b}}
execute if score @s bs.itemId matches 262 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cyan_wool","Count":1b}}
execute if score @s bs.itemId matches 263 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:damaged_anvil","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
