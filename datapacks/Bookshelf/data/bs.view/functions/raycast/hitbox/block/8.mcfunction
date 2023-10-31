# bell group
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[7, 13, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:bell[facing=west,attachment=floor] run data modify storage bs:_ hitbox set value [[4, 0, 0, 12, 16, 16]]
execute if block ~ ~ ~ minecraft:bell[facing=east,attachment=floor] run data modify storage bs:_ hitbox set value [[4, 0, 0, 12, 16, 16]]
execute if block ~ ~ ~ minecraft:bell[facing=north,attachment=floor] run data modify storage bs:_ hitbox set value [[0, 0, 4, 16, 16, 12]]
execute if block ~ ~ ~ minecraft:bell[facing=south,attachment=floor] run data modify storage bs:_ hitbox set value [[0, 0, 4, 16, 16, 12]]
execute if block ~ ~ ~ minecraft:bell[facing=west,attachment=double_wall] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[0, 13, 7, 16, 15, 9]]
execute if block ~ ~ ~ minecraft:bell[facing=east,attachment=double_wall] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[0, 13, 7, 16, 15, 9]]
execute if block ~ ~ ~ minecraft:bell[facing=north,attachment=double_wall] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[7, 13, 0, 9, 15, 16]]
execute if block ~ ~ ~ minecraft:bell[facing=south,attachment=double_wall] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[7, 13, 0, 9, 15, 16]]
execute if block ~ ~ ~ minecraft:bell[facing=west,attachment=single_wall] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[0, 13, 7, 13, 15, 9]]
execute if block ~ ~ ~ minecraft:bell[facing=east,attachment=single_wall] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[3, 13, 7, 16, 15, 9]]
execute if block ~ ~ ~ minecraft:bell[facing=north,attachment=single_wall] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[7, 13, 0, 9, 15, 13]]
execute if block ~ ~ ~ minecraft:bell[facing=south,attachment=single_wall] run data modify storage bs:_ hitbox set value [[4, 4, 4, 12, 6, 12],[5, 6, 5, 11, 13, 11],[7, 13, 3, 9, 15, 16]]