execute if score @s bs.itemId matches 540 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lapis_lazuli","Count":1b}}
execute if score @s bs.itemId matches 541 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lapis_ore","Count":1b}}
execute if score @s bs.itemId matches 542 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:large_amethyst_bud","Count":1b}}
execute if score @s bs.itemId matches 543 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:large_fern","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
