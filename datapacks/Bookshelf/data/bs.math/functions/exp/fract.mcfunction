# Use a 4-part polynomial to approximate exp(x) in range [0,1] (0.28033708, 0.425302, 1.01273643, 1.00020947)
execute store result storage bs:data math.exp.square double 1 run data get storage bs:data math.exp.x 2803370.8
function bs.math:exp/square with storage bs:data math.exp
function bs.math:exp/square with storage bs:data math.exp
execute store result score #math.exp.x3 bs.data run data get storage bs:data math.exp.square

execute store result storage bs:data math.exp.square double 1 run data get storage bs:data math.exp.x 4253020
function bs.math:exp/square with storage bs:data math.exp
execute store result score #math.exp.x2 bs.data run data get storage bs:data math.exp.square

execute store result score #math.exp.x bs.data run data get storage bs:data math.exp.x 10127364.3

scoreboard players operation #math.exp.x bs.data += #math.exp.x2 bs.data
scoreboard players operation #math.exp.x bs.data += #math.exp.x3 bs.data
execute store result storage bs:data math.exp.x double 0.0001 run scoreboard players add #math.exp.x bs.data 10002095

# Multiply exp(int) * exp(fract)
function bs.math:exp/multiply with storage bs:data math.exp
