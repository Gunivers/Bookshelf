execute if score @s bs.itemId matches 192 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobblestone_wall","Count":1b}}
execute if score @s bs.itemId matches 193 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobweb","Count":1b}}
execute if score @s bs.itemId matches 194 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cocoa_beans","Count":1b}}
execute if score @s bs.itemId matches 195 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cod","Count":1b}}
execute if score @s bs.itemId matches 196 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cod_bucket","Count":1b}}
execute if score @s bs.itemId matches 197 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cod_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
