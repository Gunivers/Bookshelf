execute store result entity @s Rotation[0] float -0.01 run scoreboard players get $math.tan.x bs.in
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^10.0
execute store result score $math.tan bs.out run data get entity @s Pos[0] 100
execute store result score #math.tan bs.data run data get entity @s Pos[2] 100
tp @s -30000000 0 1600
scoreboard players operation $math.tan bs.out *= 1000 bs.const
return run scoreboard players operation $math.tan bs.out /= #math.tan bs.data
