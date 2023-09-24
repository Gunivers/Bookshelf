# wall_head group
execute if block ~ ~ ~ #bs.view:raycast/wall_head[facing=west] run data modify storage bs:data _ set value [8, 4, 4, 16, 12, 12]
execute if block ~ ~ ~ #bs.view:raycast/wall_head[facing=east] run data modify storage bs:data _ set value [0, 4, 4, 8, 12, 12]
execute if block ~ ~ ~ #bs.view:raycast/wall_head[facing=north] run data modify storage bs:data _ set value [4, 4, 8, 12, 12, 16]
execute if block ~ ~ ~ #bs.view:raycast/wall_head[facing=south] run data modify storage bs:data _ set value [4, 4, 0, 12, 12, 8]
