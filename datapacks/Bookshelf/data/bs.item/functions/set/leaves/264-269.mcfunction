execute if score @s bs.item.id matches 264 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dandelion","Count":1b}}
execute if score @s bs.item.id matches 265 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_boat","Count":1b}}
execute if score @s bs.item.id matches 266 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_button","Count":1b}}
execute if score @s bs.item.id matches 267 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_chest_boat","Count":1b}}
execute if score @s bs.item.id matches 268 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_door","Count":1b}}
execute if score @s bs.item.id matches 269 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dark_oak_fence","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
