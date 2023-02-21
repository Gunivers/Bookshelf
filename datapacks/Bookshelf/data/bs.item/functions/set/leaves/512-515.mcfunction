execute if score @s bs.item.id matches 512 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_shovel","Count":1b}}
execute if score @s bs.item.id matches 513 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_sword","Count":1b}}
execute if score @s bs.item.id matches 514 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_trapdoor","Count":1b}}
execute if score @s bs.item.id matches 515 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:item_frame","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
