# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# Authors       : Leirof
# Contributors  : 

# Version: 1.1
# Created: ??/??/???? (1.13)
# Last modification: 06/08/2023 (1.20.1)

# Documentation :
# Dependencies  : bs.location
# Note          : 

# CODE ------------------------------------------------------------------------

tag @e remove bs.plot.new

# Place entities on the plot --------------------------------------------------

# Draw default line (y=0)
summon block_display ~ ~ ~ {Tags:["bs","bs.plot","bs.plot.new","bs.plot.setup"],teleport_duration:1,Glowing:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.05f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:white_concrete"}}

# Index
scoreboard players set @e[tag=bs.plot.setup] bs.plot.n 0

# Positioning first entity on the left of the plot
scoreboard players operation @e[tag=bs.plot.setup] bs.loc.x = #plot.origin_x bs.data
scoreboard players operation @e[tag=bs.plot.setup] bs.loc.y = #plot.origin_y bs.data
scoreboard players operation @e[tag=bs.plot.setup] bs.loc.y += #plot.half_size_y bs.data
scoreboard players operation @e[tag=bs.plot.setup] bs.loc.z = #plot.origin_z bs.data
execute as @e[tag=bs.plot.new] run function bs.location:set/scale/3

# Create all points
scoreboard players set #plot.points bs.data 0
scoreboard players add #plot.points bs.data 1
execute as @e[tag=bs.plot.setup] at @s run function bs.plot:setup/loop
tag @e[tag=bs.plot.setup] remove bs.plot.setup

# Interpolate x position of each point ----------------------------------------
## x = x0 + n * (x1 - x0) / (N - 1)

# Computing (x1 - x0)
scoreboard players operation #plot.x1-x0 bs.data = #plot.x_max bs.data
scoreboard players operation #plot.x1-x0 bs.data -= #plot.x_min bs.data

# n * (x1 - x0) / (N - 1)
execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.plot.x = @s bs.plot.n
execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.plot.x *= #plot.x1-x0 bs.data
execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.plot.x /= #plot.N-1 bs.data

# Assing x0
execute as @e[tag=bs.plot.new] run scoreboard players operation @s bs.plot.x += #plot.x_min bs.data