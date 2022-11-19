scoreboard players operation @s bs.var0 /= 10 bs.const
scoreboard players add @s bs.var1 1

execute unless entity @s[scores={bs.var0=0}] run function bs.math:common/log/child/digits
