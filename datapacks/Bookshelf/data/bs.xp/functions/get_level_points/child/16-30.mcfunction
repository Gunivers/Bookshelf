# For level 16 to 30, XP IN LEVEL =  5*LEVEL + 37
#                                    ^^^^^^^^^^^^

scoreboard players operation @s bs.res0 = @s bs.var0
scoreboard players operation @s bs.res0 -= 15 bs.const
scoreboard players operation @s bs.res0 *= 5 bs.const
scoreboard players operation @s bs.res0 += 37 bs.const