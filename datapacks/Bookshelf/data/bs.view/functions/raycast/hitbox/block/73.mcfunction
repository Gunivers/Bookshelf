# snow group
execute if block ~ ~ ~ minecraft:snow[layers=1] run data modify storage bs:data _ set value [0, 0, 0, 16, 2, 16]
execute if block ~ ~ ~ minecraft:snow[layers=2] run data modify storage bs:data _ set value [0, 0, 0, 16, 4, 16]
execute if block ~ ~ ~ minecraft:snow[layers=3] run data modify storage bs:data _ set value [0, 0, 0, 16, 6, 16]
execute if block ~ ~ ~ minecraft:snow[layers=4] run data modify storage bs:data _ set value [0, 0, 0, 16, 8, 16]
execute if block ~ ~ ~ minecraft:snow[layers=5] run data modify storage bs:data _ set value [0, 0, 0, 16, 10, 16]
execute if block ~ ~ ~ minecraft:snow[layers=6] run data modify storage bs:data _ set value [0, 0, 0, 16, 12, 16]
execute if block ~ ~ ~ minecraft:snow[layers=7] run data modify storage bs:data _ set value [0, 0, 0, 16, 14, 16]
