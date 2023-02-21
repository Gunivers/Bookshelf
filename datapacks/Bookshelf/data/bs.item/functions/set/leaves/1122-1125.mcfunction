execute if score @s bs.item.id matches 1122 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wither_rose","Count":1b}}
execute if score @s bs.item.id matches 1123 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wither_skeleton_skull","Count":1b}}
execute if score @s bs.item.id matches 1124 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wither_skeleton_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 1125 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:wolf_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
