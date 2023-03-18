scoreboard players operation @s bs.out.0 *= @s bs.in.0
scoreboard players operation @s bs.out.0 /= 1000 bs.const
scoreboard players remove @s bs.in.2 1

execute if entity @s[scores={bs.in.2=2..}] run function bs.math:pow/scale/3/child/loop
