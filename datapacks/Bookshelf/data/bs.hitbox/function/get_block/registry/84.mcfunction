# torchflower_crop group
execute if block ~ ~ ~ minecraft:torchflower_crop[age=0] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 6, 11]]
execute if block ~ ~ ~ minecraft:torchflower_crop[age=1] run data modify storage bs:out hitbox.shape set value [[5, 0, 5, 11, 10, 11]]
