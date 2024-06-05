# get the unit vector [ux,uz,uz]
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^10 run tp @s ~ ~ ~
data modify storage bs:ctx _ set from entity @s Pos
execute store result score #raycast.ux bs.data run data get storage bs:ctx _[0] 1000
execute store result score #raycast.uy bs.data run data get storage bs:ctx _[1] 1000
execute store result score #raycast.uz bs.data run data get storage bs:ctx _[2] 1000

# compute the delta [dx,dy,dz] (distance to advance to the next grid intersection)
execute store result score #raycast.dx bs.data store result score #raycast.dy bs.data run scoreboard players set #raycast.dz bs.data 10000000
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players set #raycast.dx bs.data -10000000
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players set #raycast.dy bs.data -10000000
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players set #raycast.dz bs.data -10000000
scoreboard players operation #raycast.dx bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.dy bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.dz bs.data /= #raycast.uz bs.data

# compute the length [lx,ly,lz] (distance from the origin to the next grid intersection)
tp @s ~ ~ ~
data modify storage bs:ctx _ set from entity @s Pos
execute store result storage bs:data raycast.x int -1 run data get storage bs:ctx _[0]
execute store result storage bs:data raycast.y int -1 run data get storage bs:ctx _[1]
execute store result storage bs:data raycast.z int -1 run data get storage bs:ctx _[2]
function bs.raycast:compute/relative_pos with storage bs:data raycast
execute store result score #raycast.x bs.data store result score #raycast.lx bs.data run data get storage bs:ctx _[0] -10000000
execute store result score #raycast.y bs.data store result score #raycast.ly bs.data run data get storage bs:ctx _[1] -10000000
execute store result score #raycast.z bs.data store result score #raycast.lz bs.data run data get storage bs:ctx _[2] -10000000
execute if score #raycast.ux bs.data matches 0.. run scoreboard players add #raycast.lx bs.data 10000000
execute if score #raycast.uy bs.data matches 0.. run scoreboard players add #raycast.ly bs.data 10000000
execute if score #raycast.uz bs.data matches 0.. run scoreboard players add #raycast.lz bs.data 10000000
scoreboard players operation #raycast.lx bs.data /= #raycast.ux bs.data
scoreboard players operation #raycast.ly bs.data /= #raycast.uy bs.data
scoreboard players operation #raycast.lz bs.data /= #raycast.uz bs.data

# run the recursion loop
execute store result score #raycast.b bs.data unless data storage bs:data raycast{blocks:0b}
execute store result score #raycast.e bs.data unless data storage bs:data raycast{entities:0b}
execute if score #raycast.e bs.data matches 1 if data storage bs:data raycast{entities:1b} run data modify storage bs:data raycast.entities set value "!bs.raycast.omit"
execute align xyz run function bs.raycast:recurse/next with storage bs:data raycast
execute in minecraft:overworld run tp @s -30000000 0 1600
