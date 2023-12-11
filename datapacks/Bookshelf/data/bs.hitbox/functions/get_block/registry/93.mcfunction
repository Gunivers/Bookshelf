# wall_head group
execute if block ~ ~ ~ #bs.hitbox:wall_head[facing=west] run data modify storage bs:out hitbox set value [8, 4, 4, 16, 12, 12]
execute if block ~ ~ ~ #bs.hitbox:wall_head[facing=east] run data modify storage bs:out hitbox set value [0, 4, 4, 8, 12, 12]
execute if block ~ ~ ~ #bs.hitbox:wall_head[facing=north] run data modify storage bs:out hitbox set value [4, 4, 8, 12, 12, 16]
execute if block ~ ~ ~ #bs.hitbox:wall_head[facing=south] run data modify storage bs:out hitbox set value [4, 4, 0, 12, 12, 8]
