# piglin_wall_head group
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=west] run data modify storage bs:data _ set value [[8, 4, 3, 16, 12, 1]]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=east] run data modify storage bs:data _ set value [[0, 4, 3, 8, 12, 13]]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=north] run data modify storage bs:data _ set value [[3, 4, 8, 13, 12, 16]]
execute if block ~ ~ ~ minecraft:piglin_wall_head[facing=south] run data modify storage bs:data _ set value [[3, 4, 0, 13, 12, 8]]
