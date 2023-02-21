execute if score @s bs.item.id matches 932 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:skeleton_skull","Count":1b}}
execute if score @s bs.item.id matches 933 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:skeleton_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 934 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:skull_banner_pattern","Count":1b}}
execute if score @s bs.item.id matches 935 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:slime_ball","Count":1b}}
execute if score @s bs.item.id matches 936 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:slime_block","Count":1b}}
execute if score @s bs.item.id matches 937 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:slime_spawn_egg","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
