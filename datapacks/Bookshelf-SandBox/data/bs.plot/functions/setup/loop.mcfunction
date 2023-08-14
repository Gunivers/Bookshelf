tag @e[tag=bs.plot.setup] remove bs.plot.setup

# Creating new entity
summon block_display ~ ~ ~ {Tags:["bs","bs.plot","bs.plot.new","bs.plot.setup"],teleport_duration:1,Glowing:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.05f],scale:[0.1f,0.1f,0.1f]},block_state:{Name:"minecraft:white_concrete"}}

scoreboard players operation @e[tag=bs.plot.setup] bs.plot.n = @s bs.plot.n
scoreboard players add @e[tag=bs.plot.setup] bs.plot.n 1

# Setting position
scoreboard players operation @e[tag=bs.plot.setup] bs.loc.rx = #plot.step_x bs.data
scoreboard players set @e[tag=bs.plot.setup] bs.loc.ry 0
scoreboard players operation @e[tag=bs.plot.setup] bs.loc.rz = #plot.step_z bs.data
execute as @e[tag=bs.plot.setup] run function bs.location:add/scale/3

# Create the new entity
scoreboard players add #plot.points bs.data 1
execute if score #plot.points bs.data < #plot.resolution bs.data at @e[tag=bs.plot.setup] run function bs.plot:setup/loop
