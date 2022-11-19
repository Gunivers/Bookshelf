execute if score @s bs.itemId matches 696 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_block","Count":1b}}
execute if score @s bs.itemId matches 697 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_boots","Count":1b}}
execute if score @s bs.itemId matches 698 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_chestplate","Count":1b}}
execute if score @s bs.itemId matches 699 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:netherite_helmet","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
