execute if score @s bs.itemId matches 156 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chain","Count":1b}}
execute if score @s bs.itemId matches 157 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chain_command_block","Count":1b}}
execute if score @s bs.itemId matches 158 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chainmail_boots","Count":1b}}
execute if score @s bs.itemId matches 159 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chainmail_chestplate","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
