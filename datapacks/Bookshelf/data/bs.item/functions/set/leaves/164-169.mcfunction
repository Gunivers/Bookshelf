execute if score @s bs.item.id matches 164 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chest_minecart","Count":1b}}
execute if score @s bs.item.id matches 165 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chicken","Count":1b}}
execute if score @s bs.item.id matches 166 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chicken_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 167 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chipped_anvil","Count":1b}}
execute if score @s bs.item.id matches 168 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chiseled_deepslate","Count":1b}}
execute if score @s bs.item.id matches 169 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chiseled_nether_bricks","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
