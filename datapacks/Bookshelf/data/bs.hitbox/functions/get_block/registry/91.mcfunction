# wall_banner group
execute if block ~ ~ ~ #bs.hitbox:shape/wall_banner[facing=west] run data modify storage bs:out hitbox set value [[14.0, 0.0, 0.0, 16.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_banner[facing=east] run data modify storage bs:out hitbox set value [[0.0, 0.0, 0.0, 2.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_banner[facing=north] run data modify storage bs:out hitbox set value [[0.0, 0.0, 14.0, 16.0, 12.5, 16.0]]
execute if block ~ ~ ~ #bs.hitbox:shape/wall_banner[facing=south] run data modify storage bs:out hitbox set value [[0.0, 0.0, 0.0, 16.0, 12.5, 2.0]]
