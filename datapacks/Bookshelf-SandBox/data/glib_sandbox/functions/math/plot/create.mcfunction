# INIT
scoreboard objectives add glib.plot.x dummy
scoreboard objectives add glib.plot.y dummy
scoreboard objectives add glib.plot.z dummy
team add glib.plot.new

# Plot properties
scoreboard players set sandbox.plot.center.x glib.const 15000
scoreboard players set sandbox.plot.center.y glib.const 116100
scoreboard players set sandbox.plot.center.z glib.const 25500

scoreboard players set sandbox.plot.size.x glib.const 12000
scoreboard players set sandbox.plot.size.y glib.const 6000
scoreboard players set sandbox.plot.size.z glib.const 1

# Draw default line (y=0)
summon armor_stand 26.9 116.1 25.5 {Tags:["glib","glib.sandbox.plot.create","glib.new","glib.sandbox","glib.sandbox.plot"],Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
execute at @e[tag=glib.sandbox.plot,tag=glib.new] run function glib_sandbox:math/plot/create/child/loop
tag @e[tag=glib.sandbox.plot,tag=glib.new] remove glib.new
effect give @e[tag=glib.sandbox.plot.create] minecraft:glowing 999999 1 true

# Normalize position
execute as @e[tag=glib.sandbox.plot.create] store result score @s glib.var0 run data get entity @s Pos[0] 1000
execute as @e[tag=glib.sandbox.plot.create] run function glib_sandbox:math/plot/normalize/x
execute as @e[tag=glib.sandbox.plot.create] run scoreboard players operation @s glib.plot.x = @s glib.res0
scoreboard players set @e[tag=glib.sandbox.plot.create] glib.plot.y 0
scoreboard players set @e[tag=glib.sandbox.plot.create] glib.plot.z 0

execute as @e[tag=glib.sandbox.plot.create] at @s run tp @s ~ ~ ~ ~90 ~

team join glib.plot.new @e[tag=glib.sandbox.plot.create]
tag @e[tag=glib.sandbox.plot.create] remove glib.sandbox.plot.create
