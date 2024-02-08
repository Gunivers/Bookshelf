tp B5-0-0-0-1 ~ ~ ~
execute store result score #move.x1 bs.data store result score #move.x bs.data run data get entity B5-0-0-0-1 Pos[0] 1000
execute store result score #move.y1 bs.data store result score #move.y bs.data run data get entity B5-0-0-0-1 Pos[1] 1000
execute store result score #move.z1 bs.data store result score #move.z bs.data run data get entity B5-0-0-0-1 Pos[2] 1000
execute store result score #move.x2 bs.data run data get entity @s Pos[0] 1000
execute store result score #move.y2 bs.data run data get entity @s Pos[1] 1000
execute store result score #move.z2 bs.data run data get entity @s Pos[2] 1000
execute store result score #move.vx bs.data run scoreboard players operation #move.x2 bs.data -= #move.x bs.data
execute store result score #move.vy bs.data run scoreboard players operation #move.y2 bs.data -= #move.y bs.data
execute store result score #move.vz bs.data run scoreboard players operation #move.z2 bs.data -= #move.z bs.data

scoreboard players operation #move.w bs.data = @s bs.width
scoreboard players operation #move.h bs.data = @s bs.height
scoreboard players operation #move.w bs.data *= 500 bs.const
scoreboard players operation #move.h bs.data *= 1000 bs.const

tag @s add bs.move.origin
scoreboard players set #move.ct bs.data 2147483647
execute if data storage bs:in move{block_collision:1b} run function bs.move:collision/handle/blocks
execute if data storage bs:in move{entity_collision:1b} run function bs.move:collision/handle/entities with storage bs:in move
execute if score #move.ct bs.data matches 0..1000 run function bs.move:collision/resolution/canonical with storage bs:in move
execute in minecraft:overworld run tp B5-0-0-0-1 -30000000 0 1600
tag @s remove bs.move.origin
