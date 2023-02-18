# For level 1 to 15, XP IN LEVEL =  2*LEVEL + 7
#                                   ^^^^^^^^^^^
say a

scoreboard players operation @s bs.res0 = @s bs.var0
scoreboard players operation @s bs.res0 *= 2 bs.const
scoreboard players operation @s bs.res0 += 7 bs.const