# anvil group
execute if block ~ ~ ~ #minecraft:anvil[facing=west] run data modify storage bs:out hitbox set value [[2, 0, 2, 14, 4, 14],[3, 4, 4, 13, 5, 12],[4, 5, 6, 12, 10, 10],[0, 10, 3, 16, 16, 13]]
execute if block ~ ~ ~ #minecraft:anvil[facing=east] run data modify storage bs:out hitbox set value [[2, 0, 2, 14, 4, 14],[3, 4, 4, 13, 5, 12],[4, 5, 6, 12, 10, 10],[0, 10, 3, 16, 16, 13]]
execute if block ~ ~ ~ #minecraft:anvil[facing=north] run data modify storage bs:out hitbox set value [[2, 0, 2, 14, 4, 14],[4, 4, 3, 12, 5, 13],[6, 5, 4, 10, 10, 12],[3, 10, 0, 13, 16, 16]]
execute if block ~ ~ ~ #minecraft:anvil[facing=south] run data modify storage bs:out hitbox set value [[2, 0, 2, 14, 4, 14],[4, 4, 3, 12, 5, 13],[6, 5, 4, 10, 10, 12],[3, 10, 0, 13, 16, 16]]
