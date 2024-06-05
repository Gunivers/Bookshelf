# exp2(x) = exp2(i) * exp2(f)
scoreboard players operation #math.ldexp.e bs.data /= 16777216 bs.const
execute store result storage bs:ctx x float .000000059604644775390625 run scoreboard players operation #math.exp2.x bs.data %= 16777216 bs.const
execute unless score #math.exp2.x bs.data matches 0 run function bs.math:exp2/fract with storage bs:ctx
execute if score #math.exp2.x bs.data matches 0 run data modify storage bs:ctx x set value 1.0
function bs.math:ldexp/run with storage bs:ctx
