scoreboard players operation @s bs.var1 *= 2 bs.const
scoreboard players add @s bs.res0 1
execute if score @s bs.var0 >= @s bs.var1 run function bs.math:bitwise/get_number_of_bits/child/loop