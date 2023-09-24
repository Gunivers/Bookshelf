# wall_sign group
execute if block ~ ~ ~ #minecraft:wall_signs[facing=west] run data modify storage bs:data _ set value [14.0, 4.5, 0.0, 16.0, 12.5, 16.0]
execute if block ~ ~ ~ #minecraft:wall_signs[facing=east] run data modify storage bs:data _ set value [0.0, 4.5, 0.0, 2.0, 12.5, 16.0]
execute if block ~ ~ ~ #minecraft:wall_signs[facing=north] run data modify storage bs:data _ set value [0.0, 4.5, 14.0, 16.0, 12.5, 16.0]
execute if block ~ ~ ~ #minecraft:wall_signs[facing=south] run data modify storage bs:data _ set value [0.0, 4.5, 0.0, 16.0, 12.5, 2.0]
