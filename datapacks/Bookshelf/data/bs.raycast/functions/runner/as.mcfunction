# get the starting position
tp @s ~ ~ ~
execute store result score #raycast.lx bs.data store result score #raycast.x bs.data run data get entity @s Pos[0] 1000
execute store result score #raycast.ly bs.data store result score #raycast.y bs.data run data get entity @s Pos[1] 1000
execute store result score #raycast.lz bs.data store result score #raycast.z bs.data run data get entity @s Pos[2] 1000

# get the unit vector [ux,uz,uz]
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^10 run tp @s ~ ~ ~
execute store result score #raycast.ux bs.data run data get entity @s Pos[0] 100
execute store result score #raycast.uy bs.data run data get entity @s Pos[1] 100
execute store result score #raycast.uz bs.data run data get entity @s Pos[2] 100

# run the raycast for blocks and/or entities
execute unless data storage bs:data raycast{blocks:0b} run function bs.raycast:block/run
execute store result score #raycast.entities bs.data run data get storage bs:data raycast.entities
execute store result storage bs:data raycast.range double .001 run scoreboard players add #raycast.range bs.data 8000
execute if score #raycast.entities bs.data matches 1 run function bs.raycast:entity/run/type with storage bs:data raycast
execute if score #raycast.entities bs.data matches 2.. run function bs.raycast:entity/run/tag with storage bs:data raycast
execute in minecraft:overworld run tp @s -30000000 0 1600
