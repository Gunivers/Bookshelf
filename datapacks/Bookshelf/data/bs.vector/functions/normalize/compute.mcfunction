execute store result entity @s Pos[0] double 0.00000001 run scoreboard players get $vector.normalize.0 bs.in
execute store result entity @s Pos[1] double 0.00000001 run scoreboard players get $vector.normalize.1 bs.in
execute store result entity @s Pos[2] double 0.00000001 run scoreboard players get $vector.normalize.2 bs.in
execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1
data modify storage bs:ctx _ set from entity @s Pos
execute in minecraft:overworld run tp @s -30000000 0 1600 ~ ~
