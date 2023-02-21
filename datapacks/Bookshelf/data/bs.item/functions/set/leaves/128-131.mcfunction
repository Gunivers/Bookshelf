execute if score @s bs.item.id matches 128 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 129 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_dye","Count":1b}}
execute if score @s bs.item.id matches 130 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_glazed_terracotta","Count":1b}}
execute if score @s bs.item.id matches 131 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_mushroom","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
