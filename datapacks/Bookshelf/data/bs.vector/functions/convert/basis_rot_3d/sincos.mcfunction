$execute store result entity @s Rotation[0] float $(y) run scoreboard players get $vector.basis_rot_3d.rot.0 bs.in
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^10.0
execute store result score #vector.cos.h bs.data run data get entity @s Pos[2] 100
execute store result score #vector.sin.h bs.data run data get entity @s Pos[0] -100
$execute store result entity @s Rotation[0] float $(y) run scoreboard players get $vector.basis_rot_3d.rot.1 bs.in
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^10.0
execute store result score #vector.cos.v bs.data run data get entity @s Pos[2] 100
execute store result score #vector.sin.v bs.data run data get entity @s Pos[0] -100
execute in minecraft:overworld run tp @s -30000000 0 1600
