# slab group
execute if block ~ ~ ~ #minecraft:slabs[type=top] run data modify storage bs:_ hitbox set value [[0, 8, 0, 16, 16, 16]]
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 8, 16]]
