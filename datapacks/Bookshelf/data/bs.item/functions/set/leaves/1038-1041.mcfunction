execute if score @s bs.itemId matches 1038 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tipped_arrow","Count":1b}}
execute if score @s bs.itemId matches 1039 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tnt","Count":1b}}
execute if score @s bs.itemId matches 1040 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:tnt_minecart","Count":1b}}
execute if score @s bs.itemId matches 1041 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:torch","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
