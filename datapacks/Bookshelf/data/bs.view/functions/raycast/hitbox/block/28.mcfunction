# end_portal_frame group
data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 13, 16]]
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run data modify storage bs:_ hitbox append value [4, 13, 4, 12, 16, 12]
