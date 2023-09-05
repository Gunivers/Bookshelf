
scoreboard players operation #math.asin.x bs.data = $math.asin.value bs.in
execute if score $math.asin.value bs.in matches ..-1 run scoreboard players operation #math.asin.x bs.data *= -1 bs.const

scoreboard players set $math.asin bs.out 107311
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players remove $math.asin bs.out 425484
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players add $math.asin bs.out 1215325
scoreboard players operation $math.asin bs.out *= #math.asin.x bs.data
scoreboard players operation $math.asin bs.out /= 1000 bs.const
scoreboard players remove $math.asin bs.out 9000000
scoreboard players operation $math.asin bs.out /= 100 bs.const

scoreboard players operation #math.asin.x bs.data *= -100000 bs.const
execute store result score $math.isqrt.value bs.in run scoreboard players add #math.asin.x bs.data 100000000
function #bs.math:isqrt
scoreboard players operation $math.asin bs.out *= $math.isqrt bs.out

scoreboard players add $math.asin bs.out 900000000
scoreboard players operation $math.asin bs.out /= 100000 bs.const
execute if score $math.asin.value bs.in matches ..-1 run scoreboard players operation $math.asin bs.out *= -1 bs.const
