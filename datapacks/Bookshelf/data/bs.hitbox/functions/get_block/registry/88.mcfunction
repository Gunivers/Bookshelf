# turtle_egg group
data modify storage bs:out hitbox set value [[1, 0, 1, 15, 7, 15]]
execute if block ~ ~ ~ minecraft:turtle_egg[eggs=1] run data modify storage bs:out hitbox set value [[3, 0, 3, 12, 7, 12]]
