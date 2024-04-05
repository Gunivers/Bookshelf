# stair group
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run scoreboard players set #hitbox.get_block.shape bs.data 0
execute if block ~ ~ ~ #minecraft:stairs[facing=north] run scoreboard players set #hitbox.get_block.shape bs.data 1
execute if block ~ ~ ~ #minecraft:stairs[facing=east] run scoreboard players set #hitbox.get_block.shape bs.data 2
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run scoreboard players set #hitbox.get_block.shape bs.data 3
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run scoreboard players add #hitbox.get_block.shape bs.data 4
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run scoreboard players add #hitbox.get_block.shape bs.data 5
execute if score #hitbox.get_block.shape bs.data matches 8.. run scoreboard players remove #hitbox.get_block.shape bs.data 4
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run scoreboard players add #hitbox.get_block.shape bs.data 8
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run scoreboard players add #hitbox.get_block.shape bs.data 9
execute if score #hitbox.get_block.shape bs.data matches 12.. run scoreboard players remove #hitbox.get_block.shape bs.data 4
execute if score #hitbox.get_block.shape bs.data matches 0 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 8, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 1 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 16, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 2 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[8, 8, 0, 16, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 3 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 8, 16, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 4 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 8, 16, 16],[8, 8, 8, 16, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 5 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 16, 16, 8],[0, 8, 8, 8, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 6 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[8, 8, 0, 16, 16, 16],[0, 8, 0, 8, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 7 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 8, 16, 16, 16],[8, 8, 0, 16, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 8 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 8, 8, 16, 16]]
execute if score #hitbox.get_block.shape bs.data matches 9 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[0, 8, 0, 8, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 10 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[8, 8, 0, 16, 16, 8]]
execute if score #hitbox.get_block.shape bs.data matches 11 run data modify storage bs:out hitbox.shape set value [[0, 0, 0, 16, 8, 16],[8, 8, 8, 16, 16, 16]]
execute if block ~ ~ ~ #minecraft:stairs[half=top] run scoreboard players set #hitbox.get_block.shape bs.data -1
execute if score #hitbox.get_block.shape bs.data matches -1 run data modify storage bs:out hitbox.shape[][1] set value 0
execute if score #hitbox.get_block.shape bs.data matches -1 run data modify storage bs:out hitbox.shape[][4] set value 8
execute if score #hitbox.get_block.shape bs.data matches -1 run data modify storage bs:out hitbox.shape[0][1] set value 8
execute if score #hitbox.get_block.shape bs.data matches -1 run data modify storage bs:out hitbox.shape[0][4] set value 16
