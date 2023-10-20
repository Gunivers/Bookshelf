# rail group
data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 2, 16]]
execute if block ~ ~ ~ #bs.view:raycast/rail[shape=ascending_west] run data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 8, 16]]
execute if block ~ ~ ~ #bs.view:raycast/rail[shape=ascending_east] run data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 8, 16]]
execute if block ~ ~ ~ #bs.view:raycast/rail[shape=ascending_north] run data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 8, 16]]
execute if block ~ ~ ~ #bs.view:raycast/rail[shape=ascending_south] run data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 8, 16]]
