execute if score @s bs.item.id matches 966 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:splash_potion","Count":1b}}
execute if score @s bs.item.id matches 967 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sponge","Count":1b}}
execute if score @s bs.item.id matches 968 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:spore_blossom","Count":1b}}
execute if score @s bs.item.id matches 969 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:spruce_boat","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
