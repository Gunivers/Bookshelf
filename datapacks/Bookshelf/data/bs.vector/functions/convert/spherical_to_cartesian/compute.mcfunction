$execute store result entity @s Rotation[0] float $(y) run scoreboard players get $vector.spherical_to_cartesian.0 bs.in
$execute store result entity @s Rotation[1] float $(y) run scoreboard players get $vector.spherical_to_cartesian.1 bs.in
$execute rotated as @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^$(x)
data modify storage bs:ctx _ set from entity @s Pos
execute in minecraft:overworld run tp @s -30000000 0 1600
