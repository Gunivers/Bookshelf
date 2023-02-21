execute if score @s bs.item.id matches 1126 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wooden_axe","Count":1b}}
execute if score @s bs.item.id matches 1127 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wooden_hoe","Count":1b}}
execute if score @s bs.item.id matches 1128 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wooden_pickaxe","Count":1b}}
execute if score @s bs.item.id matches 1129 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wooden_shovel","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
