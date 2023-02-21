execute if score @s bs.item.id matches 206 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cooked_cod","Count":1b}}
execute if score @s bs.item.id matches 207 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cooked_mutton","Count":1b}}
execute if score @s bs.item.id matches 208 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cooked_porkchop","Count":1b}}
execute if score @s bs.item.id matches 209 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cooked_rabbit","Count":1b}}
execute if score @s bs.item.id matches 210 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cooked_salmon","Count":1b}}
execute if score @s bs.item.id matches 211 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:cookie","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
