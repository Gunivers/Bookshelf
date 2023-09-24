# piston_head group
execute if block ~ ~ ~ minecraft:piston_head[facing=west] run data modify storage bs:data _ set value [[0, 0, 0, 4, 16, 16],[4, 6, 6, 16, 10, 10]]
execute if block ~ ~ ~ minecraft:piston_head[facing=east] run data modify storage bs:data _ set value [[12, 0, 0, 16, 16, 16],[0, 6, 6, 12, 10, 10]]
execute if block ~ ~ ~ minecraft:piston_head[facing=north] run data modify storage bs:data _ set value [[0, 0, 0, 16, 16, 4],[6, 6, 4, 10, 10, 16]]
execute if block ~ ~ ~ minecraft:piston_head[facing=south] run data modify storage bs:data _ set value [[0, 0, 12, 16, 16, 16],[6, 6, 0, 10, 10, 12]]
execute if block ~ ~ ~ minecraft:piston_head[facing=up] run data modify storage bs:data _ set value [[0, 12, 0, 16, 16, 16],[6, 0, 6, 10, 12, 10]]
execute if block ~ ~ ~ minecraft:piston_head[facing=down] run data modify storage bs:data _ set value [[0, 0, 0, 16, 4, 16],[6, 4, 6, 10, 16, 10]]
