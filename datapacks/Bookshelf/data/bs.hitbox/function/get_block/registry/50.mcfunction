# nether_wart group
execute if block ~ ~ ~ minecraft:nether_wart[age=0] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 5, 16]]
execute if block ~ ~ ~ minecraft:nether_wart[age=1] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16]]
execute if block ~ ~ ~ minecraft:nether_wart[age=2] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 11, 16]]
execute if block ~ ~ ~ minecraft:nether_wart[age=3] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 14, 16]]
