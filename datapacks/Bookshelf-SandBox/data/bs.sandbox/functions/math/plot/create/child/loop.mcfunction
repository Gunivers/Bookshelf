tag @e[tag=bs.sandbox.plot,tag=bs.new] remove bs.new
summon armor_stand ~-0.1 ~ ~ {Tags:["bs","bs.sandbox.plot.create","bs.new","bs.sandbox","bs.sandbox.plot"],Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}

execute as @e[tag=bs.sandbox.plot,tag=bs.new] store result score @s bs.var0 run data get entity @s Pos[0] 1000
execute if score @e[tag=bs.sandbox.plot,tag=bs.new,limit=1] bs.var0 matches 3150.. at @e[tag=bs.sandbox.plot,tag=bs.new] run function bs.sandbox:math/plot/create/child/loop
