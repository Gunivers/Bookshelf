# amethyst_cluster group
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=up] run data modify storage bs:out hitbox set value [[3, 0, 3, 13, 7, 13]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=down] run data modify storage bs:out hitbox set value [[3, 9, 3, 13, 16, 13]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=west] run data modify storage bs:out hitbox set value [[9, 3, 3, 16, 13, 13]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=east] run data modify storage bs:out hitbox set value [[0, 3, 3, 7, 13, 13]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=north] run data modify storage bs:out hitbox set value [[3, 3, 9, 13, 13, 16]]
execute if block ~ ~ ~ minecraft:amethyst_cluster[facing=south] run data modify storage bs:out hitbox set value [[3, 3, 0, 13, 13, 7]]
