execute if score @s bs.item.id matches 900 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:respawn_anchor","Count":1b}}
execute if score @s bs.item.id matches 901 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:rooted_dirt","Count":1b}}
execute if score @s bs.item.id matches 902 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:rose_bush","Count":1b}}
execute if score @s bs.item.id matches 903 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:rotten_flesh","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
