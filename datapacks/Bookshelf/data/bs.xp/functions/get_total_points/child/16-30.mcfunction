# For level 16 to 30, XP =  REST +  1/2 * (5*LEVEL^2 + 59*LEVEL + 566)
#                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

scoreboard players remove LEVELS bs 14

scoreboard players operation @s bs.res0 += 283 bs.const

scoreboard players operation TMP bs = LEVELS bs
scoreboard players operation TMP bs *= 59 bs.const

scoreboard players operation TMP2 bs = LEVELS bs
scoreboard players operation TMP2 bs *= LEVELS bs
scoreboard players operation TMP2 bs *= 5 bs.const

scoreboard players operation TMP bs += TMP2 bs
scoreboard players operation TMP bs /= 2 bs.const

scoreboard players operation @s bs.res0 += TMP bs