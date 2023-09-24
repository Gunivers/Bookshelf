# trapdoor group
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west,open=true] run data modify storage bs:data _ set value [[13, 0, 0, 16, 16, 16]]
execute if block ~ ~ ~ #minecraft:trapdoors[facing=east,open=true] run data modify storage bs:data _ set value [[0, 0, 0, 3, 16, 16]]
execute if block ~ ~ ~ #minecraft:trapdoors[facing=north,open=true] run data modify storage bs:data _ set value [[0, 0, 13, 16, 16, 16]]
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south,open=true] run data modify storage bs:data _ set value [[0, 0, 0, 16, 16, 3]]
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] run data modify storage bs:data _ set value [[0, 0, 0, 16, 3, 16]]
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] run data modify storage bs:data _ set value [[0, 13, 0, 16, 16, 16]]
