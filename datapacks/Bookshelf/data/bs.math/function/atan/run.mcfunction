execute store result entity @s Pos[0] double 0.001 run scoreboard players get $math.atan.x bs.in
data modify entity @s Pos[2] set value 1.0
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 in minecraft:overworld run tp @s -30000000 0 1600 ~ ~
return run execute store result score $math.atan bs.out run data get entity @s Rotation[0] -100
