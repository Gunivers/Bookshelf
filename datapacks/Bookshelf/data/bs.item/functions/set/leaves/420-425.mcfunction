execute if score @s bs.item.id matches 420 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:goat_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 421 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gold_block","Count":1b}}
execute if score @s bs.item.id matches 422 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gold_ingot","Count":1b}}
execute if score @s bs.item.id matches 423 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gold_nugget","Count":1b}}
execute if score @s bs.item.id matches 424 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gold_ore","Count":1b}}
execute if score @s bs.item.id matches 425 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:golden_apple","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
