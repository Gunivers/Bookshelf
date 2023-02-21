execute if score @s bs.item.id matches 1002 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stone_sword","Count":1b}}
execute if score @s bs.item.id matches 1003 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stonecutter","Count":1b}}
execute if score @s bs.item.id matches 1004 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stray_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1005 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:strider_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1006 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:string","Count":1b}}
execute if score @s bs.item.id matches 1007 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:stripped_acacia_log","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
