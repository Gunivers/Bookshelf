# rail group
data modify storage bs:out hitbox set value [[0, 0, 0, 16, 2, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/rail[shape=ascending_west] run data modify storage bs:out hitbox set value [[0, 0, 0, 16, 8, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/rail[shape=ascending_east] run data modify storage bs:out hitbox set value [[0, 0, 0, 16, 8, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/rail[shape=ascending_north] run data modify storage bs:out hitbox set value [[0, 0, 0, 16, 8, 16]]
execute if block ~ ~ ~ #bs.hitbox:shape/rail[shape=ascending_south] run data modify storage bs:out hitbox set value [[0, 0, 0, 16, 8, 16]]
