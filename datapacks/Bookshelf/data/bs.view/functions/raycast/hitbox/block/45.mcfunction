# mangrove_propagule group
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=false] run data modify storage bs:data _ set value [[7, 0, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=0] run data modify storage bs:data _ set value [[7, 13, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=1] run data modify storage bs:data _ set value [[7, 10, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=2] run data modify storage bs:data _ set value [[7, 7, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=3] run data modify storage bs:data _ set value [[7, 3, 7, 9, 16, 9]]
execute if block ~ ~ ~ minecraft:mangrove_propagule[hanging=true,age=4] run data modify storage bs:data _ set value [[7, 0, 7, 9, 16, 9]]
