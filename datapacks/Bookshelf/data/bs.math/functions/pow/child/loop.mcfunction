scoreboard players operation @s bs.out.0 *= @s bs.in.0
scoreboard players remove @s bs.in.2 1

execute if entity @s[scores={bs.in.2=2..}] run function bs.math:pow/child/loop
