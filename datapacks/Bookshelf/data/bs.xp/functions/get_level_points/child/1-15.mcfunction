# For level 1 to 15, XP IN LEVEL =  2*LEVEL + 7
#                                   ^^^^^^^^^^^
say a

scoreboard players operation @s bs.out.0 = @s bs.in.0
scoreboard players operation @s bs.out.0 *= 2 bs.const
scoreboard players operation @s bs.out.0 += 7 bs.const