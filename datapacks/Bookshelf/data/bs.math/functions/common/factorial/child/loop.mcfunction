scoreboard players operation @s bs.out.0 *= @s bs.in.1
scoreboard players remove @s bs.in.1 1
execute if entity @s[scores={bs.in.1=2..}] run function bs.math:common/factorial/child/loop
