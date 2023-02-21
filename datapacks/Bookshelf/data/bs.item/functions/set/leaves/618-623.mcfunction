execute if score @s bs.item.id matches 618 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:magma_cube_spawn_egg","Count":1b}}
execute if score @s bs.item.id matches 619 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_boat","Count":1b}}
execute if score @s bs.item.id matches 620 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_button","Count":1b}}
execute if score @s bs.item.id matches 621 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_chest_boat","Count":1b}}
execute if score @s bs.item.id matches 622 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_door","Count":1b}}
execute if score @s bs.item.id matches 623 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:mangrove_fence","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
