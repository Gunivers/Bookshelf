execute if score @s bs.item.id matches 914 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sculk","Count":1b}}
execute if score @s bs.item.id matches 915 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sculk_catalyst","Count":1b}}
execute if score @s bs.item.id matches 916 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sculk_sensor","Count":1b}}
execute if score @s bs.item.id matches 917 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:sculk_shrieker","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
