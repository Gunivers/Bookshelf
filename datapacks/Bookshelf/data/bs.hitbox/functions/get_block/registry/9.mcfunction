# big_dripleaf_stem group
execute if block ~ ~ ~ minecraft:big_dripleaf_stem[facing=west] run data modify storage bs:out hitbox set value [[9, 0, 5, 15, 16, 11]]
execute if block ~ ~ ~ minecraft:big_dripleaf_stem[facing=east] run data modify storage bs:out hitbox set value [[1, 0, 5, 7, 16, 11]]
execute if block ~ ~ ~ minecraft:big_dripleaf_stem[facing=north] run data modify storage bs:out hitbox set value [[5, 0, 9, 11, 16, 15]]
execute if block ~ ~ ~ minecraft:big_dripleaf_stem[facing=south] run data modify storage bs:out hitbox set value [[5, 0, 1, 11, 16, 7]]
