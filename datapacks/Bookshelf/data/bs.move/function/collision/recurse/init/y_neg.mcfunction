execute store result entity B5-0-0-0-1 Pos[1] double .001 run scoreboard players operation #move.y1 bs.data += #move.sh bs.data
execute as B5-0-0-0-1 at @s run tp @s ~ ~-.000000001 ~
execute store result score #move.y1 bs.data run data get entity B5-0-0-0-1 Pos[1]
scoreboard players operation #move.y1 bs.data *= 1000 bs.const
scoreboard players operation #move.y1 bs.data -= #move.y bs.data
scoreboard players remove #move.y2 bs.data 1000
