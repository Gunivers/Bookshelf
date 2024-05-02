# tripwire group
execute if block ~ ~ ~ minecraft:tripwire[attached=true] run data modify storage bs:out hitbox.shape set value [[0.0, 1.0, 0.0, 16.0, 2.5, 16.0]]
execute if block ~ ~ ~ minecraft:tripwire[attached=false] run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16]]
