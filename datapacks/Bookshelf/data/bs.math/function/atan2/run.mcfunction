execute store result entity @s Pos[0] double 0.001 run scoreboard players get $math.atan2.y bs.in
execute store result entity @s Pos[2] double 0.001 run scoreboard players get $math.atan2.x bs.in
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 in minecraft:overworld run tp @s -30000000 0 1600 ~ ~
return run execute store result score $math.atan2 bs.out run data get entity @s Rotation[0] -100
