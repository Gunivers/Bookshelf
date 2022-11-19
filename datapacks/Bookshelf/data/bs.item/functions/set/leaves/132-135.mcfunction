execute if score @s bs.itemId matches 132 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_mushroom_block","Count":1b}}
execute if score @s bs.itemId matches 133 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_shulker_box","Count":1b}}
execute if score @s bs.itemId matches 134 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_stained_glass","Count":1b}}
execute if score @s bs.itemId matches 135 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:brown_stained_glass_pane","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
