# medium_amethyst_bud group
execute if block ~ ~ ~ minecraft:medium_amethyst_bud[facing=up] run data modify storage bs:out hitbox set value [[3, 0, 3, 13, 4, 13]]
execute if block ~ ~ ~ minecraft:medium_amethyst_bud[facing=down] run data modify storage bs:out hitbox set value [[3, 12, 3, 13, 16, 13]]
execute if block ~ ~ ~ minecraft:medium_amethyst_bud[facing=west] run data modify storage bs:out hitbox set value [[12, 3, 3, 16, 13, 13]]
execute if block ~ ~ ~ minecraft:medium_amethyst_bud[facing=east] run data modify storage bs:out hitbox set value [[0, 3, 3, 4, 13, 13]]
execute if block ~ ~ ~ minecraft:medium_amethyst_bud[facing=north] run data modify storage bs:out hitbox set value [[3, 3, 12, 13, 13, 16]]
execute if block ~ ~ ~ minecraft:medium_amethyst_bud[facing=south] run data modify storage bs:out hitbox set value [[3, 3, 0, 13, 13, 4]]
