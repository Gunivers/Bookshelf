execute if score @s bs.item.id matches 614 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_terracotta","Count":1b}}
execute if score @s bs.item.id matches 615 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_wool","Count":1b}}
execute if score @s bs.item.id matches 616 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magma_block","Count":1b}}
execute if score @s bs.item.id matches 617 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magma_cream","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
