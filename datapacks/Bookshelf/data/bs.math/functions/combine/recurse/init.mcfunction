# ((k-n+1)(k-n+2)...(k-2)(k-1)k) / (1*2*3*...*(n-1)*n)
scoreboard players operation #math.combine.k bs.data -= #math.combine.n bs.data
scoreboard players set #math.combine.i bs.data 0
scoreboard players set $math.combine bs.out 1
function bs.math:combine/recurse/next
