# wall_hanging_sign group
execute if block ~ ~ ~ #bs.hitbox:shape/wall_hanging_sign[facing=west] run data modify storage bs:out hitbox.shape set value [[6, 14, 0, 10, 16, 16],[7, 0, 1, 9, 10, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_hanging_sign[facing=east] run data modify storage bs:out hitbox.shape set value [[6, 14, 0, 10, 16, 16],[7, 0, 1, 9, 10, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_hanging_sign[facing=north] run data modify storage bs:out hitbox.shape set value [[0, 14, 6, 16, 16, 10],[1, 0, 7, 15, 10, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_hanging_sign[facing=south] run data modify storage bs:out hitbox.shape set value [[0, 14, 6, 16, 16, 10],[1, 0, 7, 15, 10, 9]]
