execute if score @s bs.itemId matches 516 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jack_o_lantern","Count":1b}}
execute if score @s bs.itemId matches 517 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jigsaw","Count":1b}}
execute if score @s bs.itemId matches 518 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jukebox","Count":1b}}
execute if score @s bs.itemId matches 519 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:jungle_boat","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
