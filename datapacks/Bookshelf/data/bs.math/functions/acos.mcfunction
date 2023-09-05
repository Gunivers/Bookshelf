scoreboard players operation $math.asin.value bs.in = $math.acos.value bs.in
scoreboard players operation $math.asin.value bs.in *= -1 bs.const
function #bs.math:asin
execute store result score $math.acos bs.out run scoreboard players remove $math.asin bs.out 9000
