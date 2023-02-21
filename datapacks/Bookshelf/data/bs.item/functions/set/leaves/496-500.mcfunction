execute if score @s bs.item.id matches 496 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:infested_stone_bricks","Count":1b}}
execute if score @s bs.item.id matches 497 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ink_sac","Count":1b}}
execute if score @s bs.item.id matches 498 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_axe","Count":1b}}
execute if score @s bs.item.id matches 499 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_bars","Count":1b}}
execute if score @s bs.item.id matches 500 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:iron_block","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
