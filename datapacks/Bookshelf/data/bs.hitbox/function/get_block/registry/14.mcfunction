# cake group
execute if block ~ ~ ~ #bs.hitbox:shape/candle_cake run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 8, 15],[7, 8, 7, 9, 14, 9]]
execute if block ~ ~ ~ minecraft:cake[bites=0] run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=1] run data modify storage bs:out hitbox.shape set value [[3, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=2] run data modify storage bs:out hitbox.shape set value [[5, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=3] run data modify storage bs:out hitbox.shape set value [[7, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=4] run data modify storage bs:out hitbox.shape set value [[9, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=5] run data modify storage bs:out hitbox.shape set value [[11, 0, 1, 15, 8, 15]]
execute if block ~ ~ ~ minecraft:cake[bites=6] run data modify storage bs:out hitbox.shape set value [[13, 0, 1, 15, 8, 15]]
