# pressure_plate group
execute if block ~ ~ ~ #bs.hitbox:shape/pressure_plate[powered=false] run data modify storage bs:out hitbox.shape set value [[1, 0, 1, 15, 1, 15]]
execute if block ~ ~ ~ #bs.hitbox:shape/pressure_plate[powered=true] run data modify storage bs:out hitbox.shape set value [[1.0, 0.0, 1.0, 15.0, 0.5, 15.0]]
