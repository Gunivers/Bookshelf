# pane_shaped group
data modify storage bs:out hitbox.shape set value [[7, 0, 7, 9, 16, 9]]
execute if block ~ ~ ~ #bs.hitbox:shape/pane_shaped[west=true] run data modify storage bs:out hitbox.shape append value [0, 0, 7, 9, 16, 9]
execute if block ~ ~ ~ #bs.hitbox:shape/pane_shaped[east=true] run data modify storage bs:out hitbox.shape append value [7, 0, 7, 16, 16, 9]
execute if block ~ ~ ~ #bs.hitbox:shape/pane_shaped[north=true] run data modify storage bs:out hitbox.shape append value [7, 0, 0, 9, 16, 9]
execute if block ~ ~ ~ #bs.hitbox:shape/pane_shaped[south=true] run data modify storage bs:out hitbox.shape append value [7, 0, 7, 9, 16, 16]
