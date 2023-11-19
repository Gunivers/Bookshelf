# rod group
execute if block ~ ~ ~ #bs.hitbox:rod[facing=west] run data modify storage bs:_ hitbox set value [[0, 6, 6, 16, 10, 10]]
execute if block ~ ~ ~ #bs.hitbox:rod[facing=east] run data modify storage bs:_ hitbox set value [[0, 6, 6, 16, 10, 10]]
execute if block ~ ~ ~ #bs.hitbox:rod[facing=north] run data modify storage bs:_ hitbox set value [[6, 6, 0, 10, 10, 16]]
execute if block ~ ~ ~ #bs.hitbox:rod[facing=south] run data modify storage bs:_ hitbox set value [[6, 6, 0, 10, 10, 16]]
execute if block ~ ~ ~ #bs.hitbox:rod[facing=up] run data modify storage bs:_ hitbox set value [[6, 0, 6, 10, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:rod[facing=down] run data modify storage bs:_ hitbox set value [[6, 0, 6, 10, 16, 10]]
