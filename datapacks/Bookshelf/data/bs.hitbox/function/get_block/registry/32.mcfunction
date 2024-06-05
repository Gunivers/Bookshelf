# fence_gate group
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=west,in_wall=false] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=east,in_wall=false] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=north,in_wall=false] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 16, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=south,in_wall=false] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 16, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=west,in_wall=true] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 13, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=east,in_wall=true] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 13, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=north,in_wall=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 16, 13, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence_gate[facing=south,in_wall=true] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 16, 13, 10]]
