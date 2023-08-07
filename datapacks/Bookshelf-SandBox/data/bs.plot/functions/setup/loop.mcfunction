tag @e[tag=bs.plot.new] remove bs.plot.new

# Creating new entity
summon armor_stand ~ ~ ~ {Tags:["bs","bs.plot","bs.plot.new"],Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
scoreboard players operation @e[tag=bs.plot.new] bs.plot.n = @s bs.plot.n
scoreboard players add @e[tag=bs.plot.new] bs.plot.n 1

# Setting position
scoreboard players operation @e[tag=bs.plot.new] bs.loc.rx = $plot.step_x bs.const
scoreboard players set @e[tag=bs.plot.new] bs.loc.ry 0
scoreboard players operation @e[tag=bs.plot.new] bs.loc.rz = $plot.step_z bs.const
execute as @e[tag=bs.plot.new] run function bs.location:add/scale/3

# Create the new entity
scoreboard players add #plot.points bs.data 1
execute if score #plot.points bs.data < $plot.resolution bs.const at @e[tag=bs.plot.new] run function bs.plot:setup/loop
