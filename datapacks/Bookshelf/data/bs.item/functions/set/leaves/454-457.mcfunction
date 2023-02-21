execute if score @s bs.item.id matches 454 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_stained_glass_pane","Count":1b}}
execute if score @s bs.item.id matches 455 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_terracotta","Count":1b}}
execute if score @s bs.item.id matches 456 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gray_wool","Count":1b}}
execute if score @s bs.item.id matches 457 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_banner","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
