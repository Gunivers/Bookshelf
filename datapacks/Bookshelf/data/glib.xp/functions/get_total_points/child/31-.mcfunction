# For level 31 to 40, XP =  REST +  1/2 * (9*LEVEL^2 + 197*LEVEL + 2584)
#                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

scoreboard players remove LEVELS glib 29

scoreboard players operation @s bs.res0 += 1292 bs.const

scoreboard players operation TMP glib = LEVELS glib
scoreboard players operation TMP glib *= 197 bs.const

scoreboard players operation TMP2 glib = LEVELS glib
scoreboard players operation TMP2 glib *= LEVELS glib
scoreboard players operation TMP2 glib *= 9 bs.const

scoreboard players operation TMP glib += TMP2 glib
scoreboard players operation TMP glib /= 2 bs.const

scoreboard players operation @s bs.res0 += TMP glib