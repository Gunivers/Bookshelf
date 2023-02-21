execute if score @s bs.item.id matches 596 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_stained_glass_pane","Count":1b}}
execute if score @s bs.item.id matches 597 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_terracotta","Count":1b}}
execute if score @s bs.item.id matches 598 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lime_wool","Count":1b}}
execute if score @s bs.item.id matches 599 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lingering_potion","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
