execute if score @s bs.item.id matches 600 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:llama_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 601 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lodestone","Count":1b}}
execute if score @s bs.item.id matches 602 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:loom","Count":1b}}
execute if score @s bs.item.id matches 603 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magenta_banner","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
