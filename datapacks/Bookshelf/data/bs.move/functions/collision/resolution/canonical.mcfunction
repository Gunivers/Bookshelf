scoreboard players operation #move.rx bs.data = #move.vx bs.data
scoreboard players operation #move.ry bs.data = #move.vy bs.data
scoreboard players operation #move.rz bs.data = #move.vz bs.data
scoreboard players operation #move.rx bs.data *= #move.ct bs.data
scoreboard players operation #move.ry bs.data *= #move.ct bs.data
scoreboard players operation #move.rz bs.data *= #move.ct bs.data
scoreboard players operation #move.rx bs.data /= 1000 bs.const
scoreboard players operation #move.ry bs.data /= 1000 bs.const
scoreboard players operation #move.rz bs.data /= 1000 bs.const
execute store result entity B5-0-0-0-1 Pos[0] double .001 run scoreboard players operation #move.x bs.data += #move.rx bs.data
execute store result entity B5-0-0-0-1 Pos[1] double .001 run scoreboard players operation #move.y bs.data += #move.ry bs.data
execute store result entity B5-0-0-0-1 Pos[2] double .001 run scoreboard players operation #move.z bs.data += #move.rz bs.data
execute if score #move.cf bs.data matches 5 as B5-0-0-0-1 at @s run tp @s ~.0011 ~ ~
execute if score #move.cf bs.data matches 4 as B5-0-0-0-1 at @s run tp @s ~-.0011 ~ ~
execute if score #move.cf bs.data matches 3 as B5-0-0-0-1 at @s run tp @s ~ ~ ~.0011
execute if score #move.cf bs.data matches 2 as B5-0-0-0-1 at @s run tp @s ~ ~ ~-.0011
execute if score #move.cf bs.data matches 1 as B5-0-0-0-1 at @s run tp @s ~ ~.0011 ~
execute if score #move.cf bs.data matches 0 as B5-0-0-0-1 at @s run tp @s ~ ~-.0011 ~
execute positioned as B5-0-0-0-1 run tp @s ~ ~ ~
$function $(on_collision)
