# trapdoor group
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[facing=west,open=true] run data modify storage bs:out hitbox.shape set value [[13, 0, 0, 16, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[facing=east,open=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 3, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[facing=north,open=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 13, 16, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[facing=south,open=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 16, 3]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[half=bottom,open=false] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 3, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/trapdoor[half=top,open=false] run data modify storage bs:out hitbox.shape set value [[0, 13, 0, 16, 16, 16]]
