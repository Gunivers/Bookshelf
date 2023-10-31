# extended_piston group
execute if block ~ ~ ~ #bs.view:raycast/extended_piston[facing=west,extended=true] run data modify storage bs:_ hitbox set value [[4, 0, 0, 16, 16, 16]]
execute if block ~ ~ ~ #bs.view:raycast/extended_piston[facing=east,extended=true] run data modify storage bs:_ hitbox set value [[0, 0, 0, 12, 16, 16]]
execute if block ~ ~ ~ #bs.view:raycast/extended_piston[facing=north,extended=true] run data modify storage bs:_ hitbox set value [[0, 0, 4, 16, 16, 16]]
execute if block ~ ~ ~ #bs.view:raycast/extended_piston[facing=south,extended=true] run data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 16, 12]]
execute if block ~ ~ ~ #bs.view:raycast/extended_piston[facing=up,extended=true] run data modify storage bs:_ hitbox set value [[0, 0, 0, 16, 12, 16]]
execute if block ~ ~ ~ #bs.view:raycast/extended_piston[facing=down,extended=true] run data modify storage bs:_ hitbox set value [[0, 4, 0, 16, 16, 16]]
