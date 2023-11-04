# pitcher_crop group
data modify storage bs:_ hitbox set value [[3, 0, 3, 13, 16, 13]]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=0,half=lower] run data modify storage bs:_ hitbox set value [[5, 0, 5, 11, 3, 11]]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=1,half=lower] run data modify storage bs:_ hitbox set value [[3, 0, 3, 13, 14, 13]]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=3,half=upper] run data modify storage bs:_ hitbox set value [[3, 0, 3, 13, 11, 13]]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=4,half=upper] run data modify storage bs:_ hitbox set value [[3, 0, 3, 13, 15, 13]]
