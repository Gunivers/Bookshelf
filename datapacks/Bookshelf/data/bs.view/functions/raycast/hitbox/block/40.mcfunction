# ladder group
execute if block ~ ~ ~ minecraft:ladder[facing=west] run data modify storage bs:_ hitbox set value [[13, 0, 0, 16, 16, 16]]
execute if block ~ ~ ~ minecraft:ladder[facing=east] run data modify storage bs:_ hitbox set value [[0, 0, 0, 3, 16, 16]]
execute if block ~ ~ ~ minecraft:ladder[facing=north] run data modify storage bs:_ hitbox set value [[0, 0, 13, 16, 16, 16]]
execute if block ~ ~ ~ minecraft:ladder[facing=south] run data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 16, 3]]
