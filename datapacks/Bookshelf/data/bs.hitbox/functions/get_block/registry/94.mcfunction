# wall_sign group
execute if block ~ ~ ~ #bs.hitbox:shape/wall_sign[facing=west] run data modify storage bs:out hitbox.shape set value [[14.0, 4.5, 0.0, 16.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_sign[facing=east] run data modify storage bs:out hitbox.shape set value [[0.0, 4.5, 0.0, 2.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_sign[facing=north] run data modify storage bs:out hitbox.shape set value [[0.0, 4.5, 14.0, 16.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_sign[facing=south] run data modify storage bs:out hitbox.shape set value [[0.0, 4.5, 0.0, 16.0, 12.5, 2.0]]
