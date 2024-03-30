# lantern group
execute if block ~ ~ ~ #bs.hitbox:shape/lantern[hanging=false] run data modify storage bs:out hitbox set value [[5, 0, 5, 11, 7, 11],[6, 7, 6, 10, 9, 10]]
execute if block ~ ~ ~ #bs.hitbox:shape/lantern[hanging=true] run data modify storage bs:out hitbox set value [[5, 1, 5, 11, 8, 11],[6, 8, 6, 10, 10, 10]]
