# wall_torch group
execute if block ~ ~ ~ #bs.hitbox:shape/wall_torch[facing=west] run data modify storage bs:out hitbox.shape set value [[11.0, 3.0, 5.5, 16.0, 13.0, 10.5]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_torch[facing=east] run data modify storage bs:out hitbox.shape set value [[0.0, 3.0, 5.5, 5.0, 13.0, 10.5]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_torch[facing=north] run data modify storage bs:out hitbox.shape set value [[5.5, 3.0, 11.0, 10.5, 13.0, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_torch[facing=south] run data modify storage bs:out hitbox.shape set value [[5.5, 3.0, 0.0, 10.5, 13.0, 5.0]]
