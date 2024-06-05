# attached_stem group
execute if block ~ ~ ~ #bs.hitbox:shape/attached_stem[facing=west] run data modify storage bs:out hitbox.shape set value [[0, 0, 6, 10, 10, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/attached_stem[facing=east] run data modify storage bs:out hitbox.shape set value [[6, 0, 6, 16, 10, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/attached_stem[facing=north] run data modify storage bs:out hitbox.shape set value [[6, 0, 0, 10, 10, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/attached_stem[facing=south] run data modify storage bs:out hitbox.shape set value [[6, 0, 6, 10, 10, 16]]
