execute if score @s bs.item.id matches 610 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_glazed_terracotta","Count":1b}}
execute if score @s bs.item.id matches 611 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_shulker_box","Count":1b}}
execute if score @s bs.item.id matches 612 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_stained_glass","Count":1b}}
execute if score @s bs.item.id matches 613 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_stained_glass_pane","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
