tag @e[tag=glib.sandbox.plot,tag=glib.new] remove glib.new
summon armor_stand ~-0.1 ~ ~ {Tags:["glib","glib.sandbox.plot.create","glib.new","glib.sandbox","glib.sandbox.plot"],Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}

execute as @e[tag=glib.sandbox.plot,tag=glib.new] store result score @s glib.var0 run data get entity @s Pos[0] 1000
execute if score @e[tag=glib.sandbox.plot,tag=glib.new,limit=1] glib.var0 matches 3150.. at @e[tag=glib.sandbox.plot,tag=glib.new] run function glib_sandbox:math/plot/create/child/loop
