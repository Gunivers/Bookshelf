execute store result entity B5-0-0-0-1 Pos[2] double .001 run scoreboard players operation #move.z1 bs.data -= #move.w bs.data
scoreboard players operation #move.z1 bs.data /= 1000 bs.const
scoreboard players operation #move.z1 bs.data *= 1000 bs.const
scoreboard players operation #move.z1 bs.data -= #move.z bs.data
scoreboard players operation #move.z2 bs.data += #move.w bs.data
