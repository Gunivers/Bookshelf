# Use a 5-part polynomial to approximate log2(x) in range [0.5,1]
# -3.42431640625 + x * (7.6412353515625 + x * (-7.4527587890625 + x * (4.2366943359375 + x * (-1.0008544921875))))
$execute store result storage bs:ctx x float $(x) run scoreboard players set #math.log2 bs.data -10008545
execute store result score #math.log2 bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.log2 bs.data 42366943
execute store result score #math.log2 bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players remove #math.log2 bs.data 74527588
execute store result score #math.log2 bs.data run data get storage bs:ctx x
$execute store result storage bs:ctx x float $(x) run scoreboard players add #math.log2 bs.data 76412353
execute store result score #math.log2 bs.data run data get storage bs:ctx x
scoreboard players remove #math.log2 bs.data 34243164
