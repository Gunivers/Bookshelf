execute if score @s bs.itemId matches 170 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chiseled_polished_blackstone","Count":1b}}
execute if score @s bs.itemId matches 171 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chiseled_quartz_block","Count":1b}}
execute if score @s bs.itemId matches 172 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chiseled_red_sandstone","Count":1b}}
execute if score @s bs.itemId matches 173 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chiseled_sandstone","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
