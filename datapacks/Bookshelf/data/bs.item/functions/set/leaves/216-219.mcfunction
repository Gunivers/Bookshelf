execute if score @s bs.item.id matches 216 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cow_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 217 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cracked_deepslate_bricks","Count":1b}}
execute if score @s bs.item.id matches 218 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cracked_deepslate_tiles","Count":1b}}
execute if score @s bs.item.id matches 219 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cracked_nether_bricks","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
