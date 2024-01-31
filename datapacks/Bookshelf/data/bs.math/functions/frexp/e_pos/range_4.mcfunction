execute store result score #math.frexp.x bs.data run data get storage bs:ctx x 1
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run scoreboard players set #math.frexp.e bs.data 24
execute store result score #math.frexp.x bs.data run data get storage bs:ctx x 256
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run scoreboard players set #math.frexp.e bs.data 16
execute store result score #math.frexp.x bs.data run data get storage bs:ctx x 65536
execute unless score #math.frexp.x bs.data matches -8388607..8388607 run return run scoreboard players set #math.frexp.e bs.data 8
execute store result score #math.frexp.x bs.data run data get storage bs:ctx x 16777216
scoreboard players set #math.frexp.e bs.data 0
