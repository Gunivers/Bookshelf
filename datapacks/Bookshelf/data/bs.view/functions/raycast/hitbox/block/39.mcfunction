# hopper group
data modify storage bs:data _ set value [[0, 10, 0, 16, 11, 16],[0, 11, 0, 2, 16, 16],[14, 11, 0, 16, 16, 16],[2, 11, 0, 14, 16, 2],[2, 11, 14, 14, 16, 16],[4, 4, 4, 12, 10, 12]]
execute if block ~ ~ ~ minecraft:hopper[facing=down] run data modify storage bs:data _ append value [6, 0, 6, 10, 4, 10]
execute if block ~ ~ ~ minecraft:hopper[facing=west] run data modify storage bs:data _ append value [0, 4, 6, 4, 8, 10]
execute if block ~ ~ ~ minecraft:hopper[facing=east] run data modify storage bs:data _ append value [12, 4, 6, 16, 8, 10]
execute if block ~ ~ ~ minecraft:hopper[facing=north] run data modify storage bs:data _ append value [6, 4, 0, 10, 8, 4]
execute if block ~ ~ ~ minecraft:hopper[facing=south] run data modify storage bs:data _ append value [6, 4, 12, 10, 8, 16]
