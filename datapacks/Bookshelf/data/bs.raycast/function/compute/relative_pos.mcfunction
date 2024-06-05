$tp @s ~$(x) ~$(y) ~$(z)
data modify storage bs:ctx _ set from entity @s Pos
execute in minecraft:overworld run tp @s -30000000 0 1600
