# Use a 4-part polynomial to approximate exp(x) in range [0,1] (0.28033708, 0.425302, 1.01273643, 1.00020947)
execute store result storage bs:ctx z double 1 run data get storage bs:ctx x 2803370.8
function bs.math:exp/ops/z_times_x with storage bs:ctx
function bs.math:exp/ops/z_times_x with storage bs:ctx
execute store result score #math.exp.x3 bs.data run data get storage bs:ctx z

execute store result storage bs:ctx z double 1 run data get storage bs:ctx x 4253020
function bs.math:exp/ops/z_times_x with storage bs:ctx
execute store result score #math.exp.x2 bs.data run data get storage bs:ctx z

execute store result score #math.exp.x bs.data run data get storage bs:ctx x 10127364.3

scoreboard players operation #math.exp.x bs.data += #math.exp.x2 bs.data
scoreboard players operation #math.exp.x bs.data += #math.exp.x3 bs.data
execute store result storage bs:ctx x double 0.0001 run scoreboard players add #math.exp.x bs.data 10002095

# Multiply exp(int) * exp(fract)
function bs.math:exp/ops/out_times_x with storage bs:ctx
