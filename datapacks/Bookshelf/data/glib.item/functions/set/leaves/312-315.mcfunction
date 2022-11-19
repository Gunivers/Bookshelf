execute if score @s bs.itemId matches 312 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_iron_ore","Count":1b}}
execute if score @s bs.itemId matches 313 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_lapis_ore","Count":1b}}
execute if score @s bs.itemId matches 314 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_redstone_ore","Count":1b}}
execute if score @s bs.itemId matches 315 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:deepslate_tile_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
