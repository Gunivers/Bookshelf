# pipe_shaped group
data modify storage bs:_ hitbox set value []
execute if block ~ ~ ~ #bs.view:raycast/pipe_shaped[up=true] run data modify storage bs:_ hitbox append value [3, 3, 3, 13, 16, 13]
execute if block ~ ~ ~ #bs.view:raycast/pipe_shaped[down=true] run data modify storage bs:_ hitbox append value [3, 0, 3, 13, 13, 13]
execute if block ~ ~ ~ #bs.view:raycast/pipe_shaped[west=true] run data modify storage bs:_ hitbox append value [0, 3, 3, 13, 13, 13]
execute if block ~ ~ ~ #bs.view:raycast/pipe_shaped[east=true] run data modify storage bs:_ hitbox append value [3, 3, 3, 16, 13, 13]
execute if block ~ ~ ~ #bs.view:raycast/pipe_shaped[north=true] run data modify storage bs:_ hitbox append value [3, 3, 0, 13, 13, 13]
execute if block ~ ~ ~ #bs.view:raycast/pipe_shaped[south=true] run data modify storage bs:_ hitbox append value [3, 3, 3, 13, 13, 16]
