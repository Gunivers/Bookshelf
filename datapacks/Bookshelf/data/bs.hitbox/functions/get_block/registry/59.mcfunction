# pressure_plate group
execute if block ~ ~ ~ #minecraft:pressure_plates[powered=false] run data modify storage bs:out hitbox set value [[1, 0, 1, 15, 1, 15]]
execute if block ~ ~ ~ #minecraft:pressure_plates[powered=true] run data modify storage bs:out hitbox set value [[1.0, 0.0, 1.0, 15.0, 0.5, 15.0]]
