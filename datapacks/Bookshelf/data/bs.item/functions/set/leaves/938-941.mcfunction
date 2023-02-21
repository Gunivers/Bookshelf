execute if score @s bs.item.id matches 938 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:small_amethyst_bud","Count":1b}}
execute if score @s bs.item.id matches 939 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:small_dripleaf","Count":1b}}
execute if score @s bs.item.id matches 940 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smithing_table","Count":1b}}
execute if score @s bs.item.id matches 941 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:smoker","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.id.parent = @s bs.id
