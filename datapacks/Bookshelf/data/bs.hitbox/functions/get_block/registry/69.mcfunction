# small_amethyst_bud group
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=down] run data modify storage bs:out hitbox set value [[4, 13, 4, 12, 16, 12]]
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=west] run data modify storage bs:out hitbox set value [[13, 4, 4, 16, 12, 12]]
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=east] run data modify storage bs:out hitbox set value [[0, 4, 4, 3, 12, 12]]
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=north] run data modify storage bs:out hitbox set value [[4, 4, 13, 12, 12, 16]]
execute if block ~ ~ ~ minecraft:small_amethyst_bud[facing=south] run data modify storage bs:out hitbox set value [[4, 4, 0, 12, 12, 3]]
