execute if score @s bs.item.id matches 710 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_button","Count":1b}}
execute if score @s bs.item.id matches 711 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_chest_boat","Count":1b}}
execute if score @s bs.item.id matches 712 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_door","Count":1b}}
execute if score @s bs.item.id matches 713 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_fence","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
