execute store result entity @s Rotation[0] float -0.001 run data get storage bs:in view.in_view_ata.angle 250
execute at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^10.0
execute store result storage bs:ctx x double .0002 run data get entity @s Pos[0] 1000
execute in minecraft:overworld run tp @s -30000000 0 1600
