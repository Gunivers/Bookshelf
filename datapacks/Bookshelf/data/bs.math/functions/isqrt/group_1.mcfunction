execute store result score #math.isqrt.temp_0 bs.data store result score #math.isqrt.temp_1 bs.data run scoreboard players operation #math.isqrt.temp_2 bs.data = @s bs.in.0
scoreboard players set $math.isqrt bs.out -79782985
scoreboard players add #math.isqrt.temp_0 bs.data 109000
scoreboard players operation $math.isqrt bs.out /= #math.isqrt.temp_0 bs.data
scoreboard players add $math.isqrt bs.out 743
