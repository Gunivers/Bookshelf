execute if score @s bs.item.id matches 406 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:gilded_blackstone","Count":1b}}
execute if score @s bs.item.id matches 407 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glass","Count":1b}}
execute if score @s bs.item.id matches 408 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glass_bottle","Count":1b}}
execute if score @s bs.item.id matches 409 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glass_pane","Count":1b}}
execute if score @s bs.item.id matches 410 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:glistering_melon_slice","Count":1b}}
execute if score @s bs.item.id matches 411 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:globe_banner_pattern","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
