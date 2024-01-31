# decompose x into a normalized fraction and an integral power of two [log2(x) = log2(frexp.x) + frexp.e]
function bs.math:frexp/run
function bs.math:log2/fract with storage bs:ctx
scoreboard players operation #math.frexp.e bs.data *= 16777216 bs.const
execute store result storage bs:ctx x float .000000059604644775390625 run scoreboard players operation #math.log2.x bs.data += #math.frexp.e bs.data
