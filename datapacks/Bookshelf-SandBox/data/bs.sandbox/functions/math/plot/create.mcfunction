# INIT
scoreboard objectives add bs.plot.x dummy
scoreboard objectives add bs.plot.y dummy
scoreboard objectives add bs.plot.z dummy
team add bs.plot.new

# Plot properties
scoreboard players set sandbox.plot.center.x bs.const 15000
scoreboard players set sandbox.plot.center.y bs.const 116100
scoreboard players set sandbox.plot.center.z bs.const 25500

scoreboard players set sandbox.plot.size.x bs.const 12000
scoreboard players set sandbox.plot.size.y bs.const 6000
scoreboard players set sandbox.plot.size.z bs.const 1

# Draw default line (y=0)
summon armor_stand 26.9 116.1 25.5 {Tags:["bs","bs.sandbox.plot.create","bs.new","bs.sandbox","bs.sandbox.plot"],Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
execute at @e[tag=bs.sandbox.plot,tag=bs.new] run function bs.sandbox:math/plot/create/child/loop
tag @e[tag=bs.sandbox.plot,tag=bs.new] remove bs.new
effect give @e[tag=bs.sandbox.plot.create] minecraft:glowing 999999 1 true

# Normalize position
execute as @e[tag=bs.sandbox.plot.create] store result score @s bs.var0 run data get entity @s Pos[0] 1000
execute as @e[tag=bs.sandbox.plot.create] run function bs.sandbox:math/plot/normalize/x
execute as @e[tag=bs.sandbox.plot.create] run scoreboard players operation @s bs.plot.x = @s bs.res0
scoreboard players set @e[tag=bs.sandbox.plot.create] bs.plot.y 0
scoreboard players set @e[tag=bs.sandbox.plot.create] bs.plot.z 0

execute as @e[tag=bs.sandbox.plot.create] at @s run tp @s ~ ~ ~ ~90 ~

team join bs.plot.new @e[tag=bs.sandbox.plot.create]
tag @e[tag=bs.sandbox.plot.create] remove bs.sandbox.plot.create
