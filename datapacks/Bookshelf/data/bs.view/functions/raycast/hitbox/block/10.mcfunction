# big_dripleaf group
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=west] run data modify storage bs:_ hitbox set value [[9, 0, 5, 15, 13, 11]]
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=east] run data modify storage bs:_ hitbox set value [[1, 0, 5, 7, 13, 11]]
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=north] run data modify storage bs:_ hitbox set value [[5, 0, 9, 11, 13, 15]]
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=south] run data modify storage bs:_ hitbox set value [[5, 0, 1, 11, 13, 7]]
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=none] run data modify storage bs:_ hitbox append value [0, 11, 0, 16, 15, 16]
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run data modify storage bs:_ hitbox append value [0, 11, 0, 16, 13, 16]
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=unstable] run data modify storage bs:_ hitbox append value [0, 11, 0, 16, 15, 16]
