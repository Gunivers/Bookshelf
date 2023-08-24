# ((n-m+1)(n-m+2)...(n-2)(n-1)n) / (1*2*3*...*(m-1)*m)
scoreboard players operation #math.combine.n bs.data -= #math.combine.m bs.data
scoreboard players set #math.combine.i bs.data 0
scoreboard players set @s bs.out.0 1
function bs.math:combine/loop