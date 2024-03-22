scoreboard players set #math.frexp.e bs.data 0
execute store result score #result bs.data run data get storage bs:ctx x 18446744073709551616
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 64
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 39614081257132168796771975168
execute store result score #result bs.data run data get storage bs:ctx x 4294967296
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 32
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 9223372036854775808
execute store result score #result bs.data run data get storage bs:ctx x 65536
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 16
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 140737488355328
execute store result score #result bs.data run data get storage bs:ctx x 256
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 8
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 549755813888
execute store result score #result bs.data run data get storage bs:ctx x 16
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 4
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 34359738368
execute store result score #result bs.data run data get storage bs:ctx x 4
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 2
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 8589934588
execute store result score #result bs.data run data get storage bs:ctx x 2
execute if score #result bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 1
execute if score #result bs.data matches 0 store result storage bs:ctx x float .0000000004656612873077392578125 run data get storage bs:ctx x 4294967296
