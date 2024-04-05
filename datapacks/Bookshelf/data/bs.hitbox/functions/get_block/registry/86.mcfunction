# tripwire_hook group
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=west] run data modify storage bs:out hitbox.shape set value [[10, 0, 5, 16, 10, 11]]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=east] run data modify storage bs:out hitbox.shape set value [[0, 0, 5, 6, 10, 11]]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=north] run data modify storage bs:out hitbox.shape set value [[5, 0, 10, 11, 10, 16]]
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=south] run data modify storage bs:out hitbox.shape set value [[5, 0, 0, 11, 10, 6]]
