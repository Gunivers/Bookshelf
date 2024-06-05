# sea_pickle group
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=1] run data modify storage bs:out hitbox.shape set value [6, 0, 6, 10, 6, 10]
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=2] run data modify storage bs:out hitbox.shape set value [3, 0, 3, 13, 6, 13]
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=3] run data modify storage bs:out hitbox.shape set value [2, 0, 2, 14, 6, 14]
execute if block ~ ~ ~ minecraft:sea_pickle[pickles=4] run data modify storage bs:out hitbox.shape set value [2, 0, 2, 14, 7, 14]
