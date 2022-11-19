scoreboard players operation @s bs.res0 *= 2 bs.const
scoreboard players add @s bs.res1 1
execute if score @s bs.res0 < @s bs.var0 run function bs.math:special/get_next_pow2/child/loop
