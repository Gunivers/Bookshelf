execute if score @s bs.item.id matches 32 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:axolotl_bucket","Count":1b}}
execute if score @s bs.item.id matches 33 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:axolotl_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 34 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:azalea","Count":1b}}
execute if score @s bs.item.id matches 35 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:azalea_leaves","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
