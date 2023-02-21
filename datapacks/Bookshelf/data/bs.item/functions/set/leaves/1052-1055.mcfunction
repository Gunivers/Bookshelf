execute if score @s bs.item.id matches 1052 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tube_coral_fan","Count":1b}}
execute if score @s bs.item.id matches 1053 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tuff","Count":1b}}
execute if score @s bs.item.id matches 1054 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:turtle_egg","Count":1b}}
execute if score @s bs.item.id matches 1055 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:turtle_helmet","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
