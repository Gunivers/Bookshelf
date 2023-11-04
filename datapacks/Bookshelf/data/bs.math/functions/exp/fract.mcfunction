# Use a 4-part polynomial to approximate exp(x) in range [0,1] (0.28033708, 0.425302, 1.01273643, 1.00020947)
execute store result storage bs:_ square double 1 run data get storage bs:_ x 2803370.8
function bs.math:exp/square with storage bs:_
function bs.math:exp/square with storage bs:_
execute store result score #math.exp.x3 bs.data run data get storage bs:_ square

execute store result storage bs:_ square double 1 run data get storage bs:_ x 4253020
function bs.math:exp/square with storage bs:_
execute store result score #math.exp.x2 bs.data run data get storage bs:_ square

execute store result score #math.exp.x bs.data run data get storage bs:_ x 10127364.3

scoreboard players operation #math.exp.x bs.data += #math.exp.x2 bs.data
scoreboard players operation #math.exp.x bs.data += #math.exp.x3 bs.data
execute store result storage bs:_ x double 0.0001 run scoreboard players add #math.exp.x bs.data 10002095

# Multiply exp(int) * exp(fract)
function bs.math:exp/multiply with storage bs:_
