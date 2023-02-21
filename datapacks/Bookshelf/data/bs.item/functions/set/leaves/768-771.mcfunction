execute if score @s bs.item.id matches 768 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_concrete","Count":1b}}
execute if score @s bs.item.id matches 769 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 770 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_dye","Count":1b}}
execute if score @s bs.item.id matches 771 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:pink_glazed_terracotta","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
