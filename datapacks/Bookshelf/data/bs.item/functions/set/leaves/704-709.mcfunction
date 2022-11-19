execute if score @s bs.itemId matches 704 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_scrap","Count":1b}}
execute if score @s bs.itemId matches 705 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_shovel","Count":1b}}
execute if score @s bs.itemId matches 706 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_sword","Count":1b}}
execute if score @s bs.itemId matches 707 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherrack","Count":1b}}
execute if score @s bs.itemId matches 708 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:note_block","Count":1b}}
execute if score @s bs.itemId matches 709 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:oak_boat","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
