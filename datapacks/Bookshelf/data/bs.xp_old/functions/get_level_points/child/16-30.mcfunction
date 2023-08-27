# For level 16 to 30, XP IN LEVEL =  5*LEVEL + 37
#                                    ^^^^^^^^^^^^

scoreboard players operation @s bs.out.0 = @s bs.in.0
scoreboard players operation @s bs.out.0 -= 15 bs.const
scoreboard players operation @s bs.out.0 *= 5 bs.const
scoreboard players operation @s bs.out.0 += 37 bs.const