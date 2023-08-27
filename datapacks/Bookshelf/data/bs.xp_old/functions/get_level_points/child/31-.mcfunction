# For level 31 to 40, XP IN LEVEL =  9*LEVEL + 112
#                                    ^^^^^^^^^^^^^

scoreboard players operation @s bs.out.0 = @s bs.in.0
scoreboard players operation @s bs.out.0 -= 30 bs.const
scoreboard players operation @s bs.out.0 *= 9 bs.const
scoreboard players operation @s bs.out.0 += 112 bs.const