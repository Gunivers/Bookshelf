# chain group
execute if block ~ ~ ~ minecraft:chain[axis=x] run data modify storage bs:out hitbox.shape set value [[0.0, 6.5, 6.5, 16.0, 9.5, 9.5]]
execute if block ~ ~ ~ minecraft:chain[axis=y] run data modify storage bs:out hitbox.shape set value [[6.5, 0.0, 6.5, 9.5, 16.0, 9.5]]
execute if block ~ ~ ~ minecraft:chain[axis=z] run data modify storage bs:out hitbox.shape set value [[6.5, 6.5, 0.0, 9.5, 9.5, 16.0]]
