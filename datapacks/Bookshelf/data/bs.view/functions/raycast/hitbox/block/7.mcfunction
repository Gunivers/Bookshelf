# bed group
execute if block ~ ~ ~ #minecraft:beds[facing=west,part=head] run data modify storage bs:data _ set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[0, 0, 13, 3, 3, 16]]
execute if block ~ ~ ~ #minecraft:beds[facing=west,part=foot] run data modify storage bs:data _ set value [[0, 3, 0, 16, 9, 16],[13, 0, 0, 16, 3, 3],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #minecraft:beds[facing=east,part=head] run data modify storage bs:data _ set value [[0, 3, 0, 16, 9, 16],[13, 0, 0, 16, 3, 3],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #minecraft:beds[facing=east,part=foot] run data modify storage bs:data _ set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[0, 0, 13, 3, 3, 16]]
execute if block ~ ~ ~ #minecraft:beds[facing=north,part=head] run data modify storage bs:data _ set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[13, 0, 0, 16, 3, 3]]
execute if block ~ ~ ~ #minecraft:beds[facing=north,part=foot] run data modify storage bs:data _ set value [[0, 3, 0, 16, 9, 16],[0, 0, 13, 3, 3, 16],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #minecraft:beds[facing=south,part=head] run data modify storage bs:data _ set value [[0, 3, 0, 16, 9, 16],[0, 0, 13, 3, 3, 16],[13, 0, 13, 16, 3, 16]]
execute if block ~ ~ ~ #minecraft:beds[facing=south,part=foot] run data modify storage bs:data _ set value [[0, 3, 0, 16, 9, 16],[0, 0, 0, 3, 3, 3],[13, 0, 0, 16, 3, 3]]
