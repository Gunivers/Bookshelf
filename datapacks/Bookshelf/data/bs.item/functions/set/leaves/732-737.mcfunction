execute if score @s bs.item.id matches 732 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_carpet","Count":1b}}
execute if score @s bs.item.id matches 733 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_concrete","Count":1b}}
execute if score @s bs.item.id matches 734 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_concrete_powder","Count":1b}}
execute if score @s bs.item.id matches 735 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_dye","Count":1b}}
execute if score @s bs.item.id matches 736 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_glazed_terracotta","Count":1b}}
execute if score @s bs.item.id matches 737 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:orange_shulker_box","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
