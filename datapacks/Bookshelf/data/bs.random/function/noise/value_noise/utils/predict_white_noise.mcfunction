scoreboard players operation $vector.dot_product.u.0 bs.in = #idU bs.random
scoreboard players operation $vector.dot_product.u.1 bs.in = #idV bs.random

scoreboard players set $vector.dot_product.v.0 bs.in 12
scoreboard players set $vector.dot_product.v.1 bs.in 78

execute store result score $math.sin.x bs.in run function bs.random:noise/value_noise/utils/dot_product
execute store result score #tmp bs.random run function bs.random:noise/value_noise/utils/sin

scoreboard players operation #tmp bs.random *= #seed bs.random
scoreboard players operation #white_noise_value bs.random = #tmp bs.random
scoreboard players operation #tmp bs.random /= #100 bs.const
scoreboard players operation #tmp bs.random *= #100 bs.const
return run scoreboard players operation #white_noise_value bs.random -= #tmp bs.random