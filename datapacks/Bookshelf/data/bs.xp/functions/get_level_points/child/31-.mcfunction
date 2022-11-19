# For level 31 to 40, XP IN LEVEL =  9*LEVEL + 112
#                                    ^^^^^^^^^^^^^

scoreboard players operation @s bs.res0 = @s bs.var0
scoreboard players operation @s bs.res0 -= 30 bs.const
scoreboard players operation @s bs.res0 *= 9 bs.const
scoreboard players operation @s bs.res0 += 112 bs.const