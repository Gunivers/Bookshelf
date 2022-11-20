# For level 1 to 15, XP =  REST + 6*LEVEL + LEVEL^2
#                                 ^^^^^^^^^^^^^^^^^

scoreboard players operation TMP bs = LEVELS bs
scoreboard players operation TMP bs *= 6 bs.const
scoreboard players operation @s bs.res0 += TMP bs

scoreboard players operation TMP bs = LEVELS bs
scoreboard players operation TMP bs *= LEVELS bs
scoreboard players operation @s bs.res0 += TMP bs