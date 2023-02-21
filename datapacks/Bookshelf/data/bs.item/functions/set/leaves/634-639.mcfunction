execute if score @s bs.item.id matches 634 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_trapdoor","Count":1b}}
execute if score @s bs.item.id matches 635 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_wood","Count":1b}}
execute if score @s bs.item.id matches 636 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:map","Count":1b}}
execute if score @s bs.item.id matches 637 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:medium_amethyst_bud","Count":1b}}
execute if score @s bs.item.id matches 638 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:melon","Count":1b}}
execute if score @s bs.item.id matches 639 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:melon_seeds","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
