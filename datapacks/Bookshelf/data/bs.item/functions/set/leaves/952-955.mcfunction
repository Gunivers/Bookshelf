execute if score @s bs.item.id matches 952 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smooth_stone","Count":1b}}
execute if score @s bs.item.id matches 953 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smooth_stone_slab","Count":1b}}
execute if score @s bs.item.id matches 954 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:snow","Count":1b}}
execute if score @s bs.item.id matches 955 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:snow_block","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
