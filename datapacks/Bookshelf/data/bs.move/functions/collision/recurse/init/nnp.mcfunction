execute store result entity B5-0-0-0-1 Pos[0] double .001 run scoreboard players operation #move.x1 bs.data += #move.w bs.data
execute store result entity B5-0-0-0-1 Pos[1] double .001 run scoreboard players operation #move.y1 bs.data += #move.h bs.data
execute store result entity B5-0-0-0-1 Pos[2] double .001 run scoreboard players operation #move.z1 bs.data -= #move.w bs.data
execute as B5-0-0-0-1 at @s run tp @s ~-.000000001 ~-.000000001 ~
execute store result score #move.x1 bs.data run data get entity B5-0-0-0-1 Pos[0]
execute store result score #move.y1 bs.data run data get entity B5-0-0-0-1 Pos[1]
scoreboard players operation #move.z1 bs.data /= 1000 bs.const
scoreboard players operation #move.x1 bs.data *= 1000 bs.const
scoreboard players operation #move.y1 bs.data *= 1000 bs.const
scoreboard players operation #move.z1 bs.data *= 1000 bs.const
scoreboard players operation #move.x1 bs.data -= #move.x bs.data
scoreboard players operation #move.y1 bs.data -= #move.y bs.data
scoreboard players operation #move.z1 bs.data -= #move.z bs.data
scoreboard players operation #move.x2 bs.data -= #move.w bs.data
scoreboard players operation #move.z2 bs.data += #move.w bs.data
scoreboard players remove #move.x2 bs.data 1000
scoreboard players remove #move.y2 bs.data 1000

scoreboard players operation #move.w bs.data *= 1000 bs.const
scoreboard players operation #move.h bs.data *= 1000 bs.const
scoreboard players operation #move.x1 bs.data *= 1000 bs.const
scoreboard players operation #move.y1 bs.data *= 1000 bs.const
scoreboard players operation #move.z1 bs.data *= 1000 bs.const
scoreboard players operation #move.x2 bs.data *= 1000 bs.const
scoreboard players operation #move.y2 bs.data *= 1000 bs.const
scoreboard players operation #move.z2 bs.data *= 1000 bs.const

execute at B5-0-0-0-1 align xyz run function bs.move:collision/recurse/x/nnp with storage bs:in move
