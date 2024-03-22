execute store result entity @s Pos[0] double 0.001 store result storage bs:ctx x int 1 run scoreboard players get $vector.cartesian_to_spherical.0 bs.in
execute store result entity @s Pos[1] double 0.001 store result storage bs:ctx y int 1 run scoreboard players get $vector.cartesian_to_spherical.1 bs.in
execute store result entity @s Pos[2] double 0.001 store result storage bs:ctx z int 1 run scoreboard players get $vector.cartesian_to_spherical.2 bs.in
execute in minecraft:overworld positioned 0.0 0.0 0.0 facing entity @s feet run tp @s -30000000 0 1600 ~ ~
