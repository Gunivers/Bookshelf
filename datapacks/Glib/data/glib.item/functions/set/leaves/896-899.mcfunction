execute if score @s glib.itemId matches 896 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:redstone_torch","Count":1b}}
execute if score @s glib.itemId matches 897 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:reinforced_deepslate","Count":1b}}
execute if score @s glib.itemId matches 898 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:repeater","Count":1b}}
execute if score @s glib.itemId matches 899 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["glib.new"],"Item":{"id":"minecraft:repeating_command_block","Count":1b}}
scoreboard players operation @e[type=item,tag=glib.new,limit=1,sort=nearest] glib.parentId = @s glib.id
