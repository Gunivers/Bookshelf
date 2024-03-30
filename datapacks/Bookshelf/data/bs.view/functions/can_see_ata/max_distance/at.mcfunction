tp @s ~ ~ ~ ~ ~
execute store result score #view.can_see_ata.x1 bs.data run data get entity @s Pos[0] 1000
execute store result score #view.can_see_ata.y1 bs.data run data get entity @s Pos[1] 1000
execute store result score #view.can_see_ata.z1 bs.data run data get entity @s Pos[2] 1000
execute in minecraft:overworld run tp @s -30000000 0 1600
