$tp @s ^ ^ ^$(distance)
data modify storage bs:out raycast.hit_point set from entity @s Pos
execute in minecraft:overworld run tp @s -30000000 0 1600
