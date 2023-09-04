scoreboard players operation $math.sincos.angle bs.in = $math.tan.angle bs.in
function #bs.math:sincos
scoreboard players operation $math.tan bs.out = $math.sincos.sin bs.out
scoreboard players operation $math.tan bs.out *= 1000 bs.const
scoreboard players operation $math.tan bs.out /= $math.sincos.cos bs.out
