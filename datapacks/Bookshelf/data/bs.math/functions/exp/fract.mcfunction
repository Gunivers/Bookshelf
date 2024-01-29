# approximate exp(x) in range [0,1] using a Taylor polynomial
$execute store result storage bs:ctx x float $(x) run scoreboard players set #math.exp.x bs.data 248
execute store result score #math.exp.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp.x bs.data 1984
execute store result score #math.exp.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp.x bs.data 13888
execute store result score #math.exp.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp.x bs.data 83333
execute store result score #math.exp.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp.x bs.data 416666
execute store result score #math.exp.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp.x bs.data 1666666
execute store result score #math.exp.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp.x bs.data 5000000
execute store result score #math.exp.x bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.exp.x bs.data 10000000
execute store result score #math.exp.x bs.data run data get storage bs:ctx x
scoreboard players add #math.exp.x bs.data 10000000
