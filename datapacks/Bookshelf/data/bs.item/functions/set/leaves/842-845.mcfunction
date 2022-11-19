execute if score @s bs.itemId matches 842 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purple_wool","Count":1b}}
execute if score @s bs.itemId matches 843 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purpur_block","Count":1b}}
execute if score @s bs.itemId matches 844 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purpur_pillar","Count":1b}}
execute if score @s bs.itemId matches 845 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:purpur_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
