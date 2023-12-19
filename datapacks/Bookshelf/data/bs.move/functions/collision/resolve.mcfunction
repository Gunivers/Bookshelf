scoreboard players operation #move.vx bs.data *= #move.ct bs.data
scoreboard players operation #move.vy bs.data *= #move.ct bs.data
scoreboard players operation #move.vz bs.data *= #move.ct bs.data
scoreboard players operation #move.vx bs.data /= 1000 bs.const
scoreboard players operation #move.vy bs.data /= 1000 bs.const
scoreboard players operation #move.vz bs.data /= 1000 bs.const
execute store result entity B5-0-0-0-1 Pos[0] double .001 run scoreboard players operation #move.x bs.data += #move.vx bs.data
execute store result entity B5-0-0-0-1 Pos[1] double .001 run scoreboard players operation #move.y bs.data += #move.vy bs.data
execute store result entity B5-0-0-0-1 Pos[2] double .001 run scoreboard players operation #move.z bs.data += #move.vz bs.data
execute positioned as B5-0-0-0-1 run tp @s ~ ~ ~
