# coral_wall_fan group
execute if block ~ ~ ~ #bs.hitbox:coral_wall_fan[facing=west] run data modify storage bs:out hitbox set value [[5, 4, 0, 16, 12, 16]]
execute if block ~ ~ ~ #bs.hitbox:coral_wall_fan[facing=east] run data modify storage bs:out hitbox set value [[0, 4, 0, 11, 12, 16]]
execute if block ~ ~ ~ #bs.hitbox:coral_wall_fan[facing=north] run data modify storage bs:out hitbox set value [[0, 4, 5, 16, 12, 16]]
execute if block ~ ~ ~ #bs.hitbox:coral_wall_fan[facing=south] run data modify storage bs:out hitbox set value [[0, 4, 0, 16, 12, 11]]
