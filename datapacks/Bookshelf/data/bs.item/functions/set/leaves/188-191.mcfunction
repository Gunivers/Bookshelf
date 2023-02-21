execute if score @s bs.item.id matches 188 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobbled_deepslate_wall","Count":1b}}
execute if score @s bs.item.id matches 189 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobblestone","Count":1b}}
execute if score @s bs.item.id matches 190 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobblestone_slab","Count":1b}}
execute if score @s bs.item.id matches 191 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobblestone_stairs","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
