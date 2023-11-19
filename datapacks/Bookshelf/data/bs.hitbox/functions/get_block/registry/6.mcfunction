# bamboo group
data modify storage bs:out hitbox set value [[5, 0, 5, 11, 16, 11]]
execute if block ~ ~ ~ minecraft:bamboo[leaves=large] run data modify storage bs:out hitbox set value [[3, 0, 3, 13, 16, 13]]
