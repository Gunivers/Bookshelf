execute if score @s bs.itemId matches 534 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jungle_wood","Count":1b}}
execute if score @s bs.itemId matches 535 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:kelp","Count":1b}}
execute if score @s bs.itemId matches 536 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:knowledge_book","Count":1b}}
execute if score @s bs.itemId matches 537 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:ladder","Count":1b}}
execute if score @s bs.itemId matches 538 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lantern","Count":1b}}
execute if score @s bs.itemId matches 539 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:lapis_block","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
