scoreboard players operation @s bs.out.0 = @s bs.in.0
scoreboard players operation @s bs.in.2 = @s bs.in.1

execute if entity @s[scores={bs.in.2=0}] run scoreboard players set @s bs.out.0 1
execute if entity @s[scores={bs.in.2=2..}] run function bs.math:pow/scale/3/child/loop
