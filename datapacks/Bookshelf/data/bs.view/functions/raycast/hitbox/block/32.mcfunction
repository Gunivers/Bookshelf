# fence_gate group
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west,in_wall=false] run data modify storage bs:data _ set value [[6, 0, 0, 10, 16, 16]]
execute if block ~ ~ ~ #minecraft:fence_gates[facing=east,in_wall=false] run data modify storage bs:data _ set value [[6, 0, 0, 10, 16, 16]]
execute if block ~ ~ ~ #minecraft:fence_gates[facing=north,in_wall=false] run data modify storage bs:data _ set value [[0, 0, 6, 16, 16, 10]]
execute if block ~ ~ ~ #minecraft:fence_gates[facing=south,in_wall=false] run data modify storage bs:data _ set value [[0, 0, 6, 16, 16, 10]]
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west,in_wall=true] run data modify storage bs:data _ set value [[6, 0, 0, 10, 13, 16]]
execute if block ~ ~ ~ #minecraft:fence_gates[facing=east,in_wall=true] run data modify storage bs:data _ set value [[6, 0, 0, 10, 13, 16]]
execute if block ~ ~ ~ #minecraft:fence_gates[facing=north,in_wall=true] run data modify storage bs:data _ set value [[0, 0, 6, 16, 13, 10]]
execute if block ~ ~ ~ #minecraft:fence_gates[facing=south,in_wall=true] run data modify storage bs:data _ set value [[0, 0, 6, 16, 13, 10]]
