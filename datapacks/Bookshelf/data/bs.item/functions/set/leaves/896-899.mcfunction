execute if score @s bs.item.id matches 896 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:redstone_torch","Count":1b}}
execute if score @s bs.item.id matches 897 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:reinforced_deepslate","Count":1b}}
execute if score @s bs.item.id matches 898 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:repeater","Count":1b}}
execute if score @s bs.item.id matches 899 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:repeating_command_block","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
