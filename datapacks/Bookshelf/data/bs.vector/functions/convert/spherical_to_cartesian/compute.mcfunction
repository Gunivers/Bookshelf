execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #vector.spherical_to_cartesian.0 bs.data /= #vector.spherical_to_cartesian.scaling bs.data
execute store result entity @s Rotation[1] float 0.01 run scoreboard players operation #vector.spherical_to_cartesian.1 bs.data /= #vector.spherical_to_cartesian.scaling bs.data
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 run tp @s ~ ~ ~ ~ ~
data modify storage bs:ctx _ set from entity @s Pos
execute in minecraft:overworld run tp @s -30000000 0 1600
