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
scoreboard players set #raycast.distance bs.data 2147483647
execute store result score #raycast.max_distance bs.data run data get storage bs:in raycast.max_distance 1000
data modify storage bs:out raycast set value {distance:0d,hit_point:[0d,0d,0d]}
execute if data storage bs:in raycast{block_collision:1b} run function bs.raycast:check/blocks
execute if data storage bs:in raycast{entity_collision:1b} run function bs.raycast:check/entities with storage bs:in raycast
execute in minecraft:overworld run tp @s -30000000 0 1600
