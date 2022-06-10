execute if score @s glib.itemId matches 312 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_iron_ore","Count":1b}}
execute if score @s glib.itemId matches 313 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_lapis_ore","Count":1b}}
execute if score @s glib.itemId matches 314 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_redstone_ore","Count":1b}}
execute if score @s glib.itemId matches 315 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:deepslate_tile_slab","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
