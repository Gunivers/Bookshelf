execute if score @s bs.itemId matches 160 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chainmail_helmet","Count":1b}}
execute if score @s bs.itemId matches 161 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chainmail_leggings","Count":1b}}
execute if score @s bs.itemId matches 162 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:charcoal","Count":1b}}
execute if score @s bs.itemId matches 163 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:chest","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
