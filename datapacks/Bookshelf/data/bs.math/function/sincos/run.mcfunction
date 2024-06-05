execute store result entity @s Rotation[0] float -0.01 run scoreboard players get $math.sincos.x bs.in
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^10.0
execute store result score $math.sincos.cos bs.out run data get entity @s Pos[2] 100
execute store result score $math.sincos.sin bs.out run data get entity @s Pos[0] 100
tp @s -30000000 0 1600
