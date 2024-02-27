tp @s ~ ~ ~ ~ ~
data modify storage bs:ctx _.Pos set from entity @s Pos
data modify storage bs:ctx _.Rotation set from entity @s Rotation
execute in minecraft:overworld run tp @s -30000000 0 1600
