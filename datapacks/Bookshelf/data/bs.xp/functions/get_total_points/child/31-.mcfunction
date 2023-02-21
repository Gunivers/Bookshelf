# For level 31 to 40, XP =  REST +  1/2 * (9*LEVEL^2 + 197*LEVEL + 2584)
#                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

scoreboard players remove LEVELS bs 29

scoreboard players operation @s bs.out.0 += 1292 bs.const

scoreboard players operation TMP bs = LEVELS bs
scoreboard players operation TMP bs *= 197 bs.const

scoreboard players operation TMP2 bs = LEVELS bs
scoreboard players operation TMP2 bs *= LEVELS bs
scoreboard players operation TMP2 bs *= 9 bs.const

scoreboard players operation TMP bs += TMP2 bs
scoreboard players operation TMP bs /= 2 bs.const

scoreboard players operation @s bs.out.0 += TMP bs