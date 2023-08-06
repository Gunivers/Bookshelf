# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.13)
# Last modification: 06/08/2023 (1.20.1)

# Documentation : None
# Dependencies  : bs.location
# Note          : 

# CODE ------------------------------------------------------------------------

# Draw default line (y=0)
summon armor_stand ~ ~ ~ {Tags:["bs","bs.plot","bs.plot.new"],Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
scoreboard players set @e[tag=bs.plot.new] bs.plot.n 1

# Positioning first entity on the left of the plot
scoreboard players operation @e[tag=bs.plot.new] bs.loc.x = $plot.origin_x bs.const
scoreboard players operation @e[tag=bs.plot.new] bs.loc.y = $plot.origin_y bs.const
scoreboard players operation @e[tag=bs.plot.new] bs.loc.y += $plot.height bs.const
scoreboard players operation @e[tag=bs.plot.new] bs.loc.z = $plot.origin_z bs.const
execute as @e[tag=bs.plot.new] run function bs.location:set/scale/3

# Create all points
scoreboard players set #plot.points bs.data 0
scoreboard players remove #plot.points bs.data 1
execute as @e[tag=bs.plot.new] at @s run function bs.plot:setup/loop
tag @e[tag=bs.plot.new] remove bs.plot.new

# Make points glow
effect give @e[tag=bs.plot] minecraft:glowing infinite 1 true

# Normalize position
# execute as @e[tag=bs.sandbox.plot.create] store result score @s bs.in.0 run data get entity @s Pos[0] 1000
# execute as @e[tag=bs.sandbox.plot.create] run function bs.sandbox:math/plot/normalize/x
# execute as @e[tag=bs.sandbox.plot.create] run scoreboard players operation @s bs.plot.x = @s bs.out.0
# scoreboard players set @e[tag=bs.sandbox.plot.create] bs.plot.y 0
# scoreboard players set @e[tag=bs.sandbox.plot.create] bs.plot.z 0

# execute as @e[tag=bs.sandbox.plot.create] at @s run tp @s ~ ~ ~ ~90 ~

# team join bs.plot.new @e[tag=bs.sandbox.plot.create]
# tag @e[tag=bs.sandbox.plot.create] remove bs.sandbox.plot.create
