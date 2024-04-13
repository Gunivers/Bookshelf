# slab group
execute if block ~ ~ ~ #bs.hitbox:shape/slab[type=top] run data modify storage bs:out hitbox.shape set value [[0, 8, 0, 16, 16, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/slab[type=bottom] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16]]
