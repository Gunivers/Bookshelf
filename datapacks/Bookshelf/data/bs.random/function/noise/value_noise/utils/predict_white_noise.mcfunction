scoreboard players operation $math.sin.x bs.in = #idU bs.random
scoreboard players operation $math.sin.x bs.in *= #12 bs.const
scoreboard players operation #vector.dot_product bs.data = #idV bs.random
scoreboard players operation #vector.dot_product bs.data *= #78 bs.const
scoreboard players operation $math.sin.x bs.in += #vector.dot_product bs.data
scoreboard players operation $math.sin.x bs.in *= #100 bs.const

execute store result score #tmp bs.random run function bs.random:noise/value_noise/utils/sin

scoreboard players operation #tmp bs.random *= #seed bs.random
scoreboard players operation #white_noise_value bs.random = #tmp bs.random
scoreboard players operation #tmp bs.random /= #100 bs.const
scoreboard players operation #tmp bs.random *= #100 bs.const
return run scoreboard players operation #white_noise_value bs.random -= #tmp bs.random