# vine_shaped group
data modify storage bs:out hitbox.shape set value []
execute if block ~ ~ ~ #bs.hitbox:shape/vine_shaped[up=true] run data modify storage bs:out hitbox.shape append value [0, 15, 0, 16, 16, 16]
execute if block ~ ~ ~ #bs.hitbox:shape/vine_shaped[west=true] run data modify storage bs:out hitbox.shape append value [0, 0, 0, 1, 16, 16]
execute if block ~ ~ ~ #bs.hitbox:shape/vine_shaped[east=true] run data modify storage bs:out hitbox.shape append value [15, 0, 0, 16, 16, 16]
execute if block ~ ~ ~ #bs.hitbox:shape/vine_shaped[north=true] run data modify storage bs:out hitbox.shape append value [0, 0, 0, 16, 16, 1]
execute if block ~ ~ ~ #bs.hitbox:shape/vine_shaped[south=true] run data modify storage bs:out hitbox.shape append value [0, 0, 15, 16, 16, 16]
