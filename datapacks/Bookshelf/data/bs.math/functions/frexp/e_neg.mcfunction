scoreboard players set #math.frexp.e bs.data 0
data modify storage bs:out math.frexp.x set from storage bs:in math.frexp.value
execute store result score #math.frexp bs.data run data get storage bs:out math.frexp.x 65536
execute if score #math.frexp bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 16
execute if score #math.frexp bs.data matches 0 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:out math.frexp.x 140737488355328
execute store result score #math.frexp bs.data run data get storage bs:out math.frexp.x 256
execute if score #math.frexp bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 8
execute if score #math.frexp bs.data matches 0 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:out math.frexp.x 549755813888
execute store result score #math.frexp bs.data run data get storage bs:out math.frexp.x 16
execute if score #math.frexp bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 4
execute if score #math.frexp bs.data matches 0 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:out math.frexp.x 34359738368
execute store result score #math.frexp bs.data run data get storage bs:out math.frexp.x 4
execute if score #math.frexp bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 2
execute if score #math.frexp bs.data matches 0 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:out math.frexp.x 8589934588
execute store result score #math.frexp bs.data run data get storage bs:out math.frexp.x 2
execute if score #math.frexp bs.data matches 0 run scoreboard players remove #math.frexp.e bs.data 1
execute if score #math.frexp bs.data matches 0 store result storage bs:out math.frexp.x float .0000000004656612873077392578125 run data get storage bs:out math.frexp.x 4294967296
execute store result storage bs:out math.frexp.e int 1 run scoreboard players get #math.frexp.e bs.data
