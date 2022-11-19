execute if score @s bs.itemId matches 700 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_hoe","Count":1b}}
execute if score @s bs.itemId matches 701 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_ingot","Count":1b}}
execute if score @s bs.itemId matches 702 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_leggings","Count":1b}}
execute if score @s bs.itemId matches 703 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_pickaxe","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
