execute if score @s bs.item.id matches 192 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobblestone_wall","Count":1b}}
execute if score @s bs.item.id matches 193 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cobweb","Count":1b}}
execute if score @s bs.item.id matches 194 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cocoa_beans","Count":1b}}
execute if score @s bs.item.id matches 195 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cod","Count":1b}}
execute if score @s bs.item.id matches 196 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cod_bucket","Count":1b}}
execute if score @s bs.item.id matches 197 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cod_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
