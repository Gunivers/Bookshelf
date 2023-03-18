scoreboard players operation @s bs.in.0 /= 10 bs.const
scoreboard players add @s bs.in.1 1

execute unless entity @s[scores={bs.in.0=0}] run function bs.math:log/child/digits