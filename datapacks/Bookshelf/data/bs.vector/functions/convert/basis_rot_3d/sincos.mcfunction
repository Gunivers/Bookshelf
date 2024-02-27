execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #vector.basis_rot_3d.rot.0 bs.data /= #vector.basis_rot_3d.scaling bs.data
execute at @s positioned 0.0 0.0 0.0 rotated ~180 0.0 run tp @s ^ ^ ^10.0
execute store result score #vector.basis_rot_3d.cos.h bs.data run data get entity @s Pos[2] 100
execute store result score #vector.basis_rot_3d.sin.h bs.data run data get entity @s Pos[0] 100
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #vector.basis_rot_3d.rot.1 bs.data /= #vector.basis_rot_3d.scaling bs.data
execute at @s positioned 0.0 0.0 0.0 rotated ~180 0.0 run tp @s ^ ^ ^10.0
execute store result score #vector.basis_rot_3d.cos.v bs.data run data get entity @s Pos[2] 100
execute store result score #vector.basis_rot_3d.sin.v bs.data run data get entity @s Pos[0] 100
execute in minecraft:overworld run tp @s -30000000 0 1600
