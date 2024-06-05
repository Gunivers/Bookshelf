tp @s ~ ~ ~
execute store result score #hitbox.x bs.data run data get entity @s Pos[0] 1000
execute store result score #hitbox.y bs.data run data get entity @s Pos[1] 1000
execute store result score #hitbox.z bs.data run data get entity @s Pos[2] 1000
execute in minecraft:overworld run tp @s -30000000 0 1600
