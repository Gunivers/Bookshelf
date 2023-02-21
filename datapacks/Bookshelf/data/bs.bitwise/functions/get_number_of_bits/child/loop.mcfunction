scoreboard players operation @s bs.in.1 *= 2 bs.const
scoreboard players add @s bs.out.0 1
execute if score @s bs.in.0 >= @s bs.in.1 run function bs.bitwise:get_number_of_bits/child/loop