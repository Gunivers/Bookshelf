scoreboard players operation @s bs.out.0 *= 2 bs.const
scoreboard players add @s bs.out.1 1
execute if score @s bs.out.0 < @s bs.in.0 run function bs.math:special/get_next_pow2/child/loop
