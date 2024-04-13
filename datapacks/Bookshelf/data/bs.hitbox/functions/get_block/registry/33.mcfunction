# fence group
data modify storage bs:out hitbox.shape set value [[6, 0, 6, 10, 16, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/fence[west=true] run data modify storage bs:out hitbox.shape append value [0, 0, 6, 10, 16, 10]
execute if block ~ ~ ~ #bs.hitbox:shape/fence[east=true] run data modify storage bs:out hitbox.shape append value [6, 0, 6, 16, 16, 10]
execute if block ~ ~ ~ #bs.hitbox:shape/fence[north=true] run data modify storage bs:out hitbox.shape append value [6, 0, 0, 10, 16, 10]
execute if block ~ ~ ~ #bs.hitbox:shape/fence[south=true] run data modify storage bs:out hitbox.shape append value [6, 0, 6, 10, 16, 16]
